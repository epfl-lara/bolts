; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485136 () Bool)

(assert start!485136)

(declare-fun e!2962166 () Bool)

(declare-fun tp_is_empty!31765 () Bool)

(declare-fun b!4748852 () Bool)

(declare-fun tp!1349924 () Bool)

(declare-fun tp_is_empty!31767 () Bool)

(assert (=> b!4748852 (= e!2962166 (and tp_is_empty!31765 tp_is_empty!31767 tp!1349924))))

(declare-fun b!4748853 () Bool)

(declare-fun res!2013336 () Bool)

(declare-fun e!2962164 () Bool)

(assert (=> b!4748853 (=> (not res!2013336) (not e!2962164))))

(declare-datatypes ((K!14445 0))(
  ( (K!14446 (val!19827 Int)) )
))
(declare-datatypes ((V!14691 0))(
  ( (V!14692 (val!19828 Int)) )
))
(declare-datatypes ((tuple2!54796 0))(
  ( (tuple2!54797 (_1!30692 K!14445) (_2!30692 V!14691)) )
))
(declare-datatypes ((List!53176 0))(
  ( (Nil!53052) (Cons!53052 (h!59449 tuple2!54796) (t!360498 List!53176)) )
))
(declare-fun l!14304 () List!53176)

(get-info :version)

(assert (=> b!4748853 (= res!2013336 (not ((_ is Nil!53052) l!14304)))))

(declare-fun b!4748854 () Bool)

(declare-fun e!2962163 () Bool)

(assert (=> b!4748854 (= e!2962164 (not e!2962163))))

(declare-fun res!2013339 () Bool)

(assert (=> b!4748854 (=> res!2013339 e!2962163)))

(declare-fun noDuplicateKeys!2118 (List!53176) Bool)

(assert (=> b!4748854 (= res!2013339 (not (noDuplicateKeys!2118 (t!360498 l!14304))))))

(declare-fun e!2962165 () Bool)

(assert (=> b!4748854 e!2962165))

(declare-fun res!2013338 () Bool)

(assert (=> b!4748854 (=> (not res!2013338) (not e!2962165))))

(declare-datatypes ((ListMap!5485 0))(
  ( (ListMap!5486 (toList!6088 List!53176)) )
))
(declare-fun lt!1911869 () ListMap!5485)

(declare-fun lt!1911862 () ListMap!5485)

(declare-fun eq!1195 (ListMap!5485 ListMap!5485) Bool)

(assert (=> b!4748854 (= res!2013338 (eq!1195 lt!1911869 lt!1911862))))

(declare-datatypes ((Unit!135041 0))(
  ( (Unit!135042) )
))
(declare-fun lt!1911861 () Unit!135041)

(declare-fun t!14174 () tuple2!54796)

(declare-fun acc!1214 () ListMap!5485)

(declare-fun addCommutativeForDiffKeys!10 (ListMap!5485 K!14445 V!14691 K!14445 V!14691) Unit!135041)

(assert (=> b!4748854 (= lt!1911861 (addCommutativeForDiffKeys!10 acc!1214 (_1!30692 t!14174) (_2!30692 t!14174) (_1!30692 (h!59449 l!14304)) (_2!30692 (h!59449 l!14304))))))

(assert (=> b!4748854 (eq!1195 lt!1911862 lt!1911869)))

(declare-fun +!2354 (ListMap!5485 tuple2!54796) ListMap!5485)

(assert (=> b!4748854 (= lt!1911869 (+!2354 (+!2354 acc!1214 t!14174) (h!59449 l!14304)))))

(declare-fun lt!1911873 () ListMap!5485)

(assert (=> b!4748854 (= lt!1911862 (+!2354 lt!1911873 t!14174))))

(declare-fun lt!1911865 () Unit!135041)

(assert (=> b!4748854 (= lt!1911865 (addCommutativeForDiffKeys!10 acc!1214 (_1!30692 (h!59449 l!14304)) (_2!30692 (h!59449 l!14304)) (_1!30692 t!14174) (_2!30692 t!14174)))))

(declare-fun lt!1911871 () ListMap!5485)

(declare-fun lt!1911867 () ListMap!5485)

(declare-fun addToMapMapFromBucket!1544 (List!53176 ListMap!5485) ListMap!5485)

(assert (=> b!4748854 (eq!1195 lt!1911871 (addToMapMapFromBucket!1544 (t!360498 l!14304) lt!1911867))))

(declare-fun lt!1911864 () ListMap!5485)

(assert (=> b!4748854 (= lt!1911867 (+!2354 lt!1911864 (h!59449 l!14304)))))

(assert (=> b!4748854 (eq!1195 lt!1911871 (addToMapMapFromBucket!1544 l!14304 lt!1911864))))

(assert (=> b!4748854 (= lt!1911864 (+!2354 acc!1214 t!14174))))

(declare-fun lt!1911860 () List!53176)

(assert (=> b!4748854 (= lt!1911871 (addToMapMapFromBucket!1544 lt!1911860 acc!1214))))

(declare-fun lt!1911868 () ListMap!5485)

(declare-fun lt!1911863 () ListMap!5485)

(assert (=> b!4748854 (eq!1195 lt!1911868 (addToMapMapFromBucket!1544 (t!360498 l!14304) lt!1911863))))

(assert (=> b!4748854 (= lt!1911863 (+!2354 lt!1911873 t!14174))))

(declare-fun e!2962160 () Bool)

(assert (=> b!4748854 e!2962160))

(declare-fun res!2013337 () Bool)

(assert (=> b!4748854 (=> (not res!2013337) (not e!2962160))))

(declare-fun lt!1911870 () ListMap!5485)

(assert (=> b!4748854 (= res!2013337 (eq!1195 lt!1911868 (+!2354 lt!1911870 t!14174)))))

(assert (=> b!4748854 (= lt!1911868 (addToMapMapFromBucket!1544 (Cons!53052 t!14174 (t!360498 l!14304)) lt!1911873))))

(declare-fun lt!1911872 () Unit!135041)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!442 (tuple2!54796 List!53176 ListMap!5485) Unit!135041)

(assert (=> b!4748854 (= lt!1911872 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!442 t!14174 (t!360498 l!14304) lt!1911873))))

(assert (=> b!4748854 (= lt!1911870 (addToMapMapFromBucket!1544 (t!360498 l!14304) lt!1911873))))

(assert (=> b!4748854 (= lt!1911873 (+!2354 acc!1214 (h!59449 l!14304)))))

(declare-fun b!4748855 () Bool)

(assert (=> b!4748855 (= e!2962160 (eq!1195 lt!1911870 (addToMapMapFromBucket!1544 l!14304 acc!1214)))))

(declare-fun res!2013334 () Bool)

(declare-fun e!2962162 () Bool)

(assert (=> start!485136 (=> (not res!2013334) (not e!2962162))))

(assert (=> start!485136 (= res!2013334 (noDuplicateKeys!2118 l!14304))))

(assert (=> start!485136 e!2962162))

(assert (=> start!485136 e!2962166))

(assert (=> start!485136 (and tp_is_empty!31765 tp_is_empty!31767)))

(declare-fun e!2962161 () Bool)

(declare-fun inv!68317 (ListMap!5485) Bool)

(assert (=> start!485136 (and (inv!68317 acc!1214) e!2962161)))

(declare-fun b!4748856 () Bool)

(assert (=> b!4748856 (= e!2962165 (eq!1195 lt!1911867 lt!1911863))))

(declare-fun b!4748857 () Bool)

(assert (=> b!4748857 (= e!2962162 e!2962164)))

(declare-fun res!2013335 () Bool)

(assert (=> b!4748857 (=> (not res!2013335) (not e!2962164))))

(assert (=> b!4748857 (= res!2013335 (noDuplicateKeys!2118 lt!1911860))))

(assert (=> b!4748857 (= lt!1911860 (Cons!53052 t!14174 l!14304))))

(declare-fun b!4748858 () Bool)

(declare-fun tp!1349925 () Bool)

(assert (=> b!4748858 (= e!2962161 tp!1349925)))

(declare-fun b!4748859 () Bool)

(assert (=> b!4748859 (= e!2962163 true)))

(declare-fun lt!1911866 () Bool)

(assert (=> b!4748859 (= lt!1911866 (eq!1195 lt!1911863 lt!1911867))))

(assert (= (and start!485136 res!2013334) b!4748857))

(assert (= (and b!4748857 res!2013335) b!4748853))

(assert (= (and b!4748853 res!2013336) b!4748854))

(assert (= (and b!4748854 res!2013337) b!4748855))

(assert (= (and b!4748854 res!2013338) b!4748856))

(assert (= (and b!4748854 (not res!2013339)) b!4748859))

(assert (= (and start!485136 ((_ is Cons!53052) l!14304)) b!4748852))

(assert (= start!485136 b!4748858))

(declare-fun m!5708095 () Bool)

(assert (=> b!4748857 m!5708095))

(declare-fun m!5708097 () Bool)

(assert (=> b!4748855 m!5708097))

(assert (=> b!4748855 m!5708097))

(declare-fun m!5708099 () Bool)

(assert (=> b!4748855 m!5708099))

(declare-fun m!5708101 () Bool)

(assert (=> b!4748854 m!5708101))

(declare-fun m!5708103 () Bool)

(assert (=> b!4748854 m!5708103))

(declare-fun m!5708105 () Bool)

(assert (=> b!4748854 m!5708105))

(declare-fun m!5708107 () Bool)

(assert (=> b!4748854 m!5708107))

(declare-fun m!5708109 () Bool)

(assert (=> b!4748854 m!5708109))

(declare-fun m!5708111 () Bool)

(assert (=> b!4748854 m!5708111))

(declare-fun m!5708113 () Bool)

(assert (=> b!4748854 m!5708113))

(declare-fun m!5708115 () Bool)

(assert (=> b!4748854 m!5708115))

(declare-fun m!5708117 () Bool)

(assert (=> b!4748854 m!5708117))

(assert (=> b!4748854 m!5708101))

(declare-fun m!5708119 () Bool)

(assert (=> b!4748854 m!5708119))

(declare-fun m!5708121 () Bool)

(assert (=> b!4748854 m!5708121))

(declare-fun m!5708123 () Bool)

(assert (=> b!4748854 m!5708123))

(declare-fun m!5708125 () Bool)

(assert (=> b!4748854 m!5708125))

(declare-fun m!5708127 () Bool)

(assert (=> b!4748854 m!5708127))

(declare-fun m!5708129 () Bool)

(assert (=> b!4748854 m!5708129))

(declare-fun m!5708131 () Bool)

(assert (=> b!4748854 m!5708131))

(assert (=> b!4748854 m!5708109))

(declare-fun m!5708133 () Bool)

(assert (=> b!4748854 m!5708133))

(assert (=> b!4748854 m!5708123))

(declare-fun m!5708135 () Bool)

(assert (=> b!4748854 m!5708135))

(assert (=> b!4748854 m!5708107))

(declare-fun m!5708137 () Bool)

(assert (=> b!4748854 m!5708137))

(declare-fun m!5708139 () Bool)

(assert (=> b!4748854 m!5708139))

(declare-fun m!5708141 () Bool)

(assert (=> b!4748854 m!5708141))

(assert (=> b!4748854 m!5708125))

(declare-fun m!5708143 () Bool)

(assert (=> b!4748854 m!5708143))

(declare-fun m!5708145 () Bool)

(assert (=> start!485136 m!5708145))

(declare-fun m!5708147 () Bool)

(assert (=> start!485136 m!5708147))

(declare-fun m!5708149 () Bool)

(assert (=> b!4748856 m!5708149))

(declare-fun m!5708151 () Bool)

(assert (=> b!4748859 m!5708151))

(check-sat (not b!4748857) (not b!4748854) tp_is_empty!31765 (not b!4748856) (not start!485136) (not b!4748855) (not b!4748852) tp_is_empty!31767 (not b!4748859) (not b!4748858))
(check-sat)
