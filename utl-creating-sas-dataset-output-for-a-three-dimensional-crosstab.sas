Creating sas dataset output for a three dimensional crosstab                                                                            
                                                                                                                                        
GitHub                                                                                                                                  
https://cutt.ly/zgPPgGB                                                                                                                 
https://github.com/rogerjdeangelis/utl-creating-sas-dataset-output-for-a-three-dimensional-crosstab                                     
                                                                                                                                        
SAS Forum                                                                                                                               
https://cutt.ly/egPPsot                                                                                                                 
https://communities.sas.com/t5/SAS-Programming/Presenting-data-in-a-tabular-format-using-SAS-EG-Proc-Freq-Proc/m-p/695821               
                                                                                                                                        
                                                                                                                                        
github                                                                                                                                  
https://tinyurl.com/yy7ddbnc                                                                                                            
https://github.com/rogerjdeangelis/utl-transposing-sorting-and-summarizing-with-a-single-proc-corresp-freq-tabulate-and-report          
                                                                                                                                        
Related to                                                                                                                              
related repos                                                                                                                           
https://tinyurl.com/y65rk8rj                                                                                                            
https://github.com/rogerjdeangelis?tab=repositories&q=transpose+summarize&type=&language=                                               
                                                                                                                                        
*                                                                                                                                       
#####  #   #  ####   #   #  #####                                                                                                       
  #    ##  #  #   #  #   #    #                                                                                                         
  #    # # #  #   #  #   #    #                                                                                                         
  #    #  ##  ####   #   #    #                                                                                                         
  #    #   #  #      #   #    #                                                                                                         
  #    #   #  #      #   #    #                                                                                                         
#####  #   #  #       ###     #                                                                                                         
                                                                                                                                        
#! INPUT ;                                                                                                                              
                                                                                                                                        
data have;                                                                                                                              
   informat Year Campus Retain Term1 $16.;                                                                                              
   input Year Campus Retain Term1 ;                                                                                                     
cards4;                                                                                                                                 
2015-2016 Campus1 Retained uid1                                                                                                         
2015-2016 Campus2 Retained uid2                                                                                                         
2015-2016 Campus3 Retained uid3                                                                                                         
2015-2016 Campus1 Withdrawn uid4                                                                                                        
2015-2016 Campus1 Graduated uid5                                                                                                        
2015-2016 Campus1 NOT-Retained uid6                                                                                                     
2015-2016 Campus2 Retained uid7                                                                                                         
2015-2016 Campus3 Retained uid8                                                                                                         
2015-2016 Campus2 Withdrawn uid9                                                                                                        
2015-2016 Campus1 Graduated uid10                                                                                                       
2016-2017 Campus1 Retained uid11                                                                                                        
2016-2017 Campus2 Retained uid12                                                                                                        
2016-2017 Campus3 Retained uid13                                                                                                        
2016-2017 Campus1 Withdrawn uid14                                                                                                       
2016-2017 Campus1 Graduated uid15                                                                                                       
2016-2017 Campus1 NOT-Retained uid16                                                                                                    
2016-2017 Campus2 Retained uid17                                                                                                        
2016-2017 Campus3 Retained uid18                                                                                                        
2016-2017 Campus2 Withdrawn uid19                                                                                                       
2016-2017 Campus1 Graduated uid20                                                                                                       
2017-2018 Campus2 Retained uid22                                                                                                        
2017-2018 Campus3 Retained uid23                                                                                                        
2017-2018 Campus1 Withdrawn uid24                                                                                                       
2017-2018 Campus1 Graduated uid25                                                                                                       
2017-2018 Campus1 NOT-Retained uid26                                                                                                    
2017-2018 Campus2 Retained uid27                                                                                                        
2017-2018 Campus3 Retained uid28                                                                                                        
2017-2018 Campus2 Withdrawn uid29                                                                                                       
2017-2018 Campus1 Graduated uid30                                                                                                       
;;;;                                                                                                                                    
run;quit;                                                                                                                               
                                                                                                                                        
                                                                                                                                        
WORK.HAVE total obs=29                                                                                                                  
                                                                                                                                        
    YEAR       CAMPUS     RETAIN          TERM1                                                                                         
                                                                                                                                        
  2015-2016    Campus1    Retained        uid1                                                                                          
  2015-2016    Campus2    Retained        uid2                                                                                          
  2015-2016    Campus3    Retained        uid3                                                                                          
  2015-2016    Campus1    Withdrawn       uid4                                                                                          
  2015-2016    Campus1    Graduated       uid5                                                                                          
  2015-2016    Campus1    NOT-Retained    uid6                                                                                          
  2015-2016    Campus2    Retained        uid7                                                                                          
  2015-2016    Campus3    Retained        uid8                                                                                          
  2015-2016    Campus2    Withdrawn       uid9                                                                                          
  2015-2016    Campus1    Graduated       uid10                                                                                         
  2016-2017    Campus1    Retained        uid11                                                                                         
  2016-2017    Campus2    Retained        uid12                                                                                         
  2016-2017    Campus3    Retained        uid13                                                                                         
  2016-2017    Campus1    Withdrawn       uid14                                                                                         
  2016-2017    Campus1    Graduated       uid15                                                                                         
  2016-2017    Campus1    NOT-Retained    uid16                                                                                         
  2016-2017    Campus2    Retained        uid17                                                                                         
  2016-2017    Campus3    Retained        uid18                                                                                         
  2016-2017    Campus2    Withdrawn       uid19                                                                                         
  2016-2017    Campus1    Graduated       uid20                                                                                         
  2017-2018    Campus2    Retained        uid22                                                                                         
  2017-2018    Campus3    Retained        uid23                                                                                         
  2017-2018    Campus1    Withdrawn       uid24                                                                                         
  2017-2018    Campus1    Graduated       uid25                                                                                         
  2017-2018    Campus1    NOT-Retained    uid26                                                                                         
  2017-2018    Campus2    Retained        uid27                                                                                         
  2017-2018    Campus3    Retained        uid28                                                                                         
  2017-2018    Campus2    Withdrawn       uid29                                                                                         
  2017-2018    Campus1    Graduated       uid30                                                                                         
                                                                                                                                        
*                                                                                                                                       
 ###   #   #  #####  ####   #   #  #####                                                                                                
#   #  #   #    #    #   #  #   #    #                                                                                                  
#   #  #   #    #    #   #  #   #    #                                                                                                  
#   #  #   #    #    ####   #   #    #                                                                                                  
#   #  #   #    #    #      #   #    #                                                                                                  
#   #  #   #    #    #      #   #    #                                                                                                  
 ###    ###     #    #       ###     #                                                                                                  
                                                                                                                                        
#! OUTPUT ;                                                                                                                             
                                                                                                                                        
NOTE I CREATE A SAS DATASET;                                                                                                            
                                                                                                                                        
WANT total obs=9                                                                                                                        
                                                                                                                                        
                                              NOT_                                                                                      
  YEAR        LABEL     GRADUATED    RETAINED    RETAINED    WITHDRAWN    SUM                                                           
                                                                                                                                        
2015-2016    Campus1        2            1           1           1         5                                                            
2015-2016    Campus2        0            0           2           1         3                                                            
2015-2016    Campus3        0            0           2           0         2                                                            
2016-2017    Campus1        2            1           1           1         5                                                            
2016-2017    Campus2        0            0           2           1         3                                                            
2016-2017    Campus3        0            0           2           0         2                                                            
2017-2018    Campus1        2            1           0           1         4                                                            
2017-2018    Campus2        0            0           2           1         3                                                            
2017-2018    Campus3        0            0           2           0         2                                                            
                                                                                                                                        
                                                                                                                                        
proc print data=want;                                                                                                                   
  by year;                                                                                                                              
  id year;                                                                                                                              
run;quit;                                                                                                                               
                                                                                                                                        
                                       NOT_                                                                                             
  YEAR        LABEL     GRADUATED    RETAINED    RETAINED    WITHDRAWN    SUM                                                           
                                                                                                                                        
2015-2016    Campus1        2           1           1            1         5                                                            
             Campus2        0           0           2            1         3                                                            
             Campus3        0           0           2            0         2                                                            
                                                                                                                                        
                                                                                                                                        
2016-2017    Campus1        2           1           1            1         5                                                            
             Campus2        0           0           2            1         3                                                            
             Campus3        0           0           2            0         2                                                            
                                                                                                                                        
                                                                                                                                        
2017-2018    Campus1        2           1           0            1         4                                                            
             Campus2        0           0           2            1         3                                                            
             Campus3        0           0           2            0         2                                                            
                                                                                                                                        
                                                                                                                                        
*                                                                                                                                       
####   ####    ###    ###   #####   ###    ###                                                                                          
#   #  #   #  #   #  #   #  #      #   #  #   #                                                                                         
#   #  #   #  #   #  #      #       #      #                                                                                            
####   ####   #   #  #      ####     #      #                                                                                           
#      # #    #   #  #      #         #      #                                                                                          
#      #  #   #   #  #   #  #      #   #  #   #                                                                                         
#      #   #   ###    ###   #####   ###    ###                                                                                          
                                                                                                                                        
#! PROCESS ;                                                                                                                            
                                                                                                                                        
ods output observed=want(where=(label ne "Sum"));                                                                                       
proc corresp data=have  observed ;                                                                                                      
by year;                                                                                                                                
tables campus, retain;                                                                                                                  
run;quit;                                                                                                                               
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
