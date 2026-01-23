; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252580 () Bool)

(assert start!252580)

(declare-fun b_free!72951 () Bool)

(declare-fun b_next!73655 () Bool)

(assert (=> start!252580 (= b_free!72951 (not b_next!73655))))

(declare-fun tp!823719 () Bool)

(declare-fun b_and!190205 () Bool)

(assert (=> start!252580 (= tp!823719 b_and!190205)))

(declare-fun b!2599828 () Bool)

(declare-fun res!1094991 () Bool)

(declare-fun e!1641020 () Bool)

(assert (=> b!2599828 (=> (not res!1094991) (not e!1641020))))

(declare-datatypes ((B!2357 0))(
  ( (B!2358 (val!9646 Int)) )
))
(declare-datatypes ((List!30079 0))(
  ( (Nil!29979) (Cons!29979 (h!35399 B!2357) (t!213092 List!30079)) )
))
(declare-fun l!3788 () List!30079)

(declare-fun p!2182 () Int)

(declare-fun forall!6160 (List!30079 Int) Bool)

(assert (=> b!2599828 (= res!1094991 (forall!6160 l!3788 p!2182))))

(declare-fun b!2599830 () Bool)

(declare-fun noDuplicate!527 (List!30079) Bool)

(assert (=> b!2599830 (= e!1641020 (not (noDuplicate!527 (t!213092 l!3788))))))

(declare-fun b!2599829 () Bool)

(declare-fun res!1094990 () Bool)

(assert (=> b!2599829 (=> (not res!1094990) (not e!1641020))))

(get-info :version)

(assert (=> b!2599829 (= res!1094990 (not ((_ is Nil!29979) l!3788)))))

(declare-fun res!1094989 () Bool)

(assert (=> start!252580 (=> (not res!1094989) (not e!1641020))))

(assert (=> start!252580 (= res!1094989 (noDuplicate!527 l!3788))))

(assert (=> start!252580 e!1641020))

(declare-fun e!1641021 () Bool)

(assert (=> start!252580 e!1641021))

(assert (=> start!252580 tp!823719))

(declare-fun b!2599831 () Bool)

(declare-fun tp_is_empty!13637 () Bool)

(declare-fun tp!823720 () Bool)

(assert (=> b!2599831 (= e!1641021 (and tp_is_empty!13637 tp!823720))))

(assert (= (and start!252580 res!1094989) b!2599828))

(assert (= (and b!2599828 res!1094991) b!2599829))

(assert (= (and b!2599829 res!1094990) b!2599830))

(assert (= (and start!252580 ((_ is Cons!29979) l!3788)) b!2599831))

(declare-fun m!2935451 () Bool)

(assert (=> b!2599828 m!2935451))

(declare-fun m!2935453 () Bool)

(assert (=> b!2599830 m!2935453))

(declare-fun m!2935455 () Bool)

(assert (=> start!252580 m!2935455))

(check-sat tp_is_empty!13637 (not start!252580) b_and!190205 (not b!2599830) (not b!2599831) (not b_next!73655) (not b!2599828))
(check-sat b_and!190205 (not b_next!73655))
(get-model)

(declare-fun d!736583 () Bool)

(declare-fun res!1095004 () Bool)

(declare-fun e!1641034 () Bool)

(assert (=> d!736583 (=> res!1095004 e!1641034)))

(assert (=> d!736583 (= res!1095004 ((_ is Nil!29979) (t!213092 l!3788)))))

(assert (=> d!736583 (= (noDuplicate!527 (t!213092 l!3788)) e!1641034)))

(declare-fun b!2599844 () Bool)

(declare-fun e!1641035 () Bool)

(assert (=> b!2599844 (= e!1641034 e!1641035)))

(declare-fun res!1095005 () Bool)

(assert (=> b!2599844 (=> (not res!1095005) (not e!1641035))))

(declare-fun contains!5527 (List!30079 B!2357) Bool)

(assert (=> b!2599844 (= res!1095005 (not (contains!5527 (t!213092 (t!213092 l!3788)) (h!35399 (t!213092 l!3788)))))))

(declare-fun b!2599845 () Bool)

(assert (=> b!2599845 (= e!1641035 (noDuplicate!527 (t!213092 (t!213092 l!3788))))))

(assert (= (and d!736583 (not res!1095004)) b!2599844))

(assert (= (and b!2599844 res!1095005) b!2599845))

(declare-fun m!2935463 () Bool)

(assert (=> b!2599844 m!2935463))

(declare-fun m!2935465 () Bool)

(assert (=> b!2599845 m!2935465))

(assert (=> b!2599830 d!736583))

(declare-fun d!736589 () Bool)

(declare-fun res!1095010 () Bool)

(declare-fun e!1641040 () Bool)

(assert (=> d!736589 (=> res!1095010 e!1641040)))

(assert (=> d!736589 (= res!1095010 ((_ is Nil!29979) l!3788))))

(assert (=> d!736589 (= (noDuplicate!527 l!3788) e!1641040)))

(declare-fun b!2599850 () Bool)

(declare-fun e!1641041 () Bool)

(assert (=> b!2599850 (= e!1641040 e!1641041)))

(declare-fun res!1095011 () Bool)

(assert (=> b!2599850 (=> (not res!1095011) (not e!1641041))))

(assert (=> b!2599850 (= res!1095011 (not (contains!5527 (t!213092 l!3788) (h!35399 l!3788))))))

(declare-fun b!2599851 () Bool)

(assert (=> b!2599851 (= e!1641041 (noDuplicate!527 (t!213092 l!3788)))))

(assert (= (and d!736589 (not res!1095010)) b!2599850))

(assert (= (and b!2599850 res!1095011) b!2599851))

(declare-fun m!2935467 () Bool)

(assert (=> b!2599850 m!2935467))

(assert (=> b!2599851 m!2935453))

(assert (=> start!252580 d!736589))

(declare-fun d!736591 () Bool)

(declare-fun res!1095018 () Bool)

(declare-fun e!1641051 () Bool)

(assert (=> d!736591 (=> res!1095018 e!1641051)))

(assert (=> d!736591 (= res!1095018 ((_ is Nil!29979) l!3788))))

(assert (=> d!736591 (= (forall!6160 l!3788 p!2182) e!1641051)))

(declare-fun b!2599863 () Bool)

(declare-fun e!1641052 () Bool)

(assert (=> b!2599863 (= e!1641051 e!1641052)))

(declare-fun res!1095019 () Bool)

(assert (=> b!2599863 (=> (not res!1095019) (not e!1641052))))

(declare-fun dynLambda!12669 (Int B!2357) Bool)

(assert (=> b!2599863 (= res!1095019 (dynLambda!12669 p!2182 (h!35399 l!3788)))))

(declare-fun b!2599864 () Bool)

(assert (=> b!2599864 (= e!1641052 (forall!6160 (t!213092 l!3788) p!2182))))

(assert (= (and d!736591 (not res!1095018)) b!2599863))

(assert (= (and b!2599863 res!1095019) b!2599864))

(declare-fun b_lambda!77735 () Bool)

(assert (=> (not b_lambda!77735) (not b!2599863)))

(declare-fun t!213096 () Bool)

(declare-fun tb!141483 () Bool)

(assert (=> (and start!252580 (= p!2182 p!2182) t!213096) tb!141483))

(declare-fun result!175992 () Bool)

(assert (=> tb!141483 (= result!175992 true)))

(assert (=> b!2599863 t!213096))

(declare-fun b_and!190209 () Bool)

(assert (= b_and!190205 (and (=> t!213096 result!175992) b_and!190209)))

(declare-fun m!2935473 () Bool)

(assert (=> b!2599863 m!2935473))

(declare-fun m!2935475 () Bool)

(assert (=> b!2599864 m!2935475))

(assert (=> b!2599828 d!736591))

(declare-fun b!2599869 () Bool)

(declare-fun e!1641055 () Bool)

(declare-fun tp!823726 () Bool)

(assert (=> b!2599869 (= e!1641055 (and tp_is_empty!13637 tp!823726))))

(assert (=> b!2599831 (= tp!823720 e!1641055)))

(assert (= (and b!2599831 ((_ is Cons!29979) (t!213092 l!3788))) b!2599869))

(declare-fun b_lambda!77737 () Bool)

(assert (= b_lambda!77735 (or (and start!252580 b_free!72951) b_lambda!77737)))

(check-sat tp_is_empty!13637 (not b!2599851) (not b_lambda!77737) (not b_next!73655) (not b!2599864) (not b!2599869) (not b!2599845) b_and!190209 (not b!2599844) (not b!2599850))
(check-sat b_and!190209 (not b_next!73655))
