; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78798 () Bool)

(assert start!78798)

(declare-fun b_free!16983 () Bool)

(declare-fun b_next!16983 () Bool)

(assert (=> start!78798 (= b_free!16983 (not b_next!16983))))

(declare-fun tp!59391 () Bool)

(declare-fun b_and!27721 () Bool)

(assert (=> start!78798 (= tp!59391 b_and!27721)))

(declare-fun b!919081 () Bool)

(declare-fun res!619832 () Bool)

(declare-fun e!515928 () Bool)

(assert (=> b!919081 (=> (not res!619832) (not e!515928))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919081 (= res!619832 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919082 () Bool)

(declare-fun e!515933 () Bool)

(assert (=> b!919082 (= e!515928 e!515933)))

(declare-fun res!619824 () Bool)

(assert (=> b!919082 (=> (not res!619824) (not e!515933))))

(declare-fun lt!412542 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919082 (= res!619824 (validKeyInArray!0 lt!412542))))

(declare-datatypes ((array!54974 0))(
  ( (array!54975 (arr!26428 (Array (_ BitVec 32) (_ BitVec 64))) (size!26888 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54974)

(assert (=> b!919082 (= lt!412542 (select (arr!26428 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!919083 () Bool)

(declare-fun res!619827 () Bool)

(declare-fun e!515932 () Bool)

(assert (=> b!919083 (=> (not res!619827) (not e!515932))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54974 (_ BitVec 32)) Bool)

(assert (=> b!919083 (= res!619827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919084 () Bool)

(declare-fun res!619823 () Bool)

(assert (=> b!919084 (=> (not res!619823) (not e!515932))))

(declare-datatypes ((List!18656 0))(
  ( (Nil!18653) (Cons!18652 (h!19798 (_ BitVec 64)) (t!26377 List!18656)) )
))
(declare-fun arrayNoDuplicates!0 (array!54974 (_ BitVec 32) List!18656) Bool)

(assert (=> b!919084 (= res!619823 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18653))))

(declare-fun mapIsEmpty!30993 () Bool)

(declare-fun mapRes!30993 () Bool)

(assert (=> mapIsEmpty!30993 mapRes!30993))

(declare-fun b!919085 () Bool)

(declare-fun res!619829 () Bool)

(assert (=> b!919085 (=> (not res!619829) (not e!515928))))

(declare-fun k0!1099 () (_ BitVec 64))

(assert (=> b!919085 (= res!619829 (validKeyInArray!0 k0!1099))))

(declare-fun res!619830 () Bool)

(assert (=> start!78798 (=> (not res!619830) (not e!515932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78798 (= res!619830 (validMask!0 mask!1881))))

(assert (=> start!78798 e!515932))

(assert (=> start!78798 true))

(declare-fun tp_is_empty!19491 () Bool)

(assert (=> start!78798 tp_is_empty!19491))

(declare-datatypes ((V!30953 0))(
  ( (V!30954 (val!9796 Int)) )
))
(declare-datatypes ((ValueCell!9264 0))(
  ( (ValueCellFull!9264 (v!12314 V!30953)) (EmptyCell!9264) )
))
(declare-datatypes ((array!54976 0))(
  ( (array!54977 (arr!26429 (Array (_ BitVec 32) ValueCell!9264)) (size!26889 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54976)

(declare-fun e!515929 () Bool)

(declare-fun array_inv!20590 (array!54976) Bool)

(assert (=> start!78798 (and (array_inv!20590 _values!1231) e!515929)))

(assert (=> start!78798 tp!59391))

(declare-fun array_inv!20591 (array!54974) Bool)

(assert (=> start!78798 (array_inv!20591 _keys!1487)))

(declare-fun b!919086 () Bool)

(assert (=> b!919086 (= e!515932 e!515928)))

(declare-fun res!619831 () Bool)

(assert (=> b!919086 (=> (not res!619831) (not e!515928))))

(declare-datatypes ((tuple2!12814 0))(
  ( (tuple2!12815 (_1!6417 (_ BitVec 64)) (_2!6417 V!30953)) )
))
(declare-datatypes ((List!18657 0))(
  ( (Nil!18654) (Cons!18653 (h!19799 tuple2!12814) (t!26378 List!18657)) )
))
(declare-datatypes ((ListLongMap!11525 0))(
  ( (ListLongMap!11526 (toList!5778 List!18657)) )
))
(declare-fun lt!412547 () ListLongMap!11525)

(declare-fun contains!4790 (ListLongMap!11525 (_ BitVec 64)) Bool)

(assert (=> b!919086 (= res!619831 (contains!4790 lt!412547 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30953)

(declare-fun minValue!1173 () V!30953)

(declare-fun getCurrentListMap!3002 (array!54974 array!54976 (_ BitVec 32) (_ BitVec 32) V!30953 V!30953 (_ BitVec 32) Int) ListLongMap!11525)

(assert (=> b!919086 (= lt!412547 (getCurrentListMap!3002 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!919087 () Bool)

(declare-fun e!515930 () Bool)

(assert (=> b!919087 (= e!515930 tp_is_empty!19491)))

(declare-fun mapNonEmpty!30993 () Bool)

(declare-fun tp!59390 () Bool)

(assert (=> mapNonEmpty!30993 (= mapRes!30993 (and tp!59390 e!515930))))

(declare-fun mapKey!30993 () (_ BitVec 32))

(declare-fun mapValue!30993 () ValueCell!9264)

(declare-fun mapRest!30993 () (Array (_ BitVec 32) ValueCell!9264))

(assert (=> mapNonEmpty!30993 (= (arr!26429 _values!1231) (store mapRest!30993 mapKey!30993 mapValue!30993))))

(declare-fun b!919088 () Bool)

(declare-fun res!619826 () Bool)

(assert (=> b!919088 (=> (not res!619826) (not e!515928))))

(declare-fun v!791 () V!30953)

(declare-fun apply!594 (ListLongMap!11525 (_ BitVec 64)) V!30953)

(assert (=> b!919088 (= res!619826 (= (apply!594 lt!412547 k0!1099) v!791))))

(declare-fun b!919089 () Bool)

(declare-fun res!619828 () Bool)

(assert (=> b!919089 (=> (not res!619828) (not e!515932))))

(assert (=> b!919089 (= res!619828 (and (= (size!26889 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26888 _keys!1487) (size!26889 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919090 () Bool)

(declare-fun e!515931 () Bool)

(assert (=> b!919090 (= e!515931 tp_is_empty!19491)))

(declare-fun b!919091 () Bool)

(assert (=> b!919091 (= e!515933 (not true))))

(assert (=> b!919091 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18653)))

(declare-datatypes ((Unit!31015 0))(
  ( (Unit!31016) )
))
(declare-fun lt!412548 () Unit!31015)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!54974 (_ BitVec 32) (_ BitVec 32)) Unit!31015)

(assert (=> b!919091 (= lt!412548 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!412544 () tuple2!12814)

(declare-fun +!2604 (ListLongMap!11525 tuple2!12814) ListLongMap!11525)

(assert (=> b!919091 (contains!4790 (+!2604 lt!412547 lt!412544) k0!1099)))

(declare-fun lt!412545 () Unit!31015)

(declare-fun lt!412543 () V!30953)

(declare-fun addStillContains!366 (ListLongMap!11525 (_ BitVec 64) V!30953 (_ BitVec 64)) Unit!31015)

(assert (=> b!919091 (= lt!412545 (addStillContains!366 lt!412547 lt!412542 lt!412543 k0!1099))))

(assert (=> b!919091 (= (getCurrentListMap!3002 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2604 (getCurrentListMap!3002 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412544))))

(assert (=> b!919091 (= lt!412544 (tuple2!12815 lt!412542 lt!412543))))

(declare-fun get!13877 (ValueCell!9264 V!30953) V!30953)

(declare-fun dynLambda!1443 (Int (_ BitVec 64)) V!30953)

(assert (=> b!919091 (= lt!412543 (get!13877 (select (arr!26429 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1443 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412546 () Unit!31015)

(declare-fun lemmaListMapRecursiveValidKeyArray!39 (array!54974 array!54976 (_ BitVec 32) (_ BitVec 32) V!30953 V!30953 (_ BitVec 32) Int) Unit!31015)

(assert (=> b!919091 (= lt!412546 (lemmaListMapRecursiveValidKeyArray!39 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919092 () Bool)

(assert (=> b!919092 (= e!515929 (and e!515931 mapRes!30993))))

(declare-fun condMapEmpty!30993 () Bool)

(declare-fun mapDefault!30993 () ValueCell!9264)

(assert (=> b!919092 (= condMapEmpty!30993 (= (arr!26429 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9264)) mapDefault!30993)))))

(declare-fun b!919093 () Bool)

(declare-fun res!619825 () Bool)

(assert (=> b!919093 (=> (not res!619825) (not e!515932))))

(assert (=> b!919093 (= res!619825 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26888 _keys!1487))))))

(assert (= (and start!78798 res!619830) b!919089))

(assert (= (and b!919089 res!619828) b!919083))

(assert (= (and b!919083 res!619827) b!919084))

(assert (= (and b!919084 res!619823) b!919093))

(assert (= (and b!919093 res!619825) b!919086))

(assert (= (and b!919086 res!619831) b!919088))

(assert (= (and b!919088 res!619826) b!919081))

(assert (= (and b!919081 res!619832) b!919085))

(assert (= (and b!919085 res!619829) b!919082))

(assert (= (and b!919082 res!619824) b!919091))

(assert (= (and b!919092 condMapEmpty!30993) mapIsEmpty!30993))

(assert (= (and b!919092 (not condMapEmpty!30993)) mapNonEmpty!30993))

(get-info :version)

(assert (= (and mapNonEmpty!30993 ((_ is ValueCellFull!9264) mapValue!30993)) b!919087))

(assert (= (and b!919092 ((_ is ValueCellFull!9264) mapDefault!30993)) b!919090))

(assert (= start!78798 b!919092))

(declare-fun b_lambda!13515 () Bool)

(assert (=> (not b_lambda!13515) (not b!919091)))

(declare-fun t!26376 () Bool)

(declare-fun tb!5571 () Bool)

(assert (=> (and start!78798 (= defaultEntry!1235 defaultEntry!1235) t!26376) tb!5571))

(declare-fun result!10957 () Bool)

(assert (=> tb!5571 (= result!10957 tp_is_empty!19491)))

(assert (=> b!919091 t!26376))

(declare-fun b_and!27723 () Bool)

(assert (= b_and!27721 (and (=> t!26376 result!10957) b_and!27723)))

(declare-fun m!852931 () Bool)

(assert (=> b!919086 m!852931))

(declare-fun m!852933 () Bool)

(assert (=> b!919086 m!852933))

(declare-fun m!852935 () Bool)

(assert (=> b!919088 m!852935))

(declare-fun m!852937 () Bool)

(assert (=> start!78798 m!852937))

(declare-fun m!852939 () Bool)

(assert (=> start!78798 m!852939))

(declare-fun m!852941 () Bool)

(assert (=> start!78798 m!852941))

(declare-fun m!852943 () Bool)

(assert (=> b!919091 m!852943))

(declare-fun m!852945 () Bool)

(assert (=> b!919091 m!852945))

(declare-fun m!852947 () Bool)

(assert (=> b!919091 m!852947))

(declare-fun m!852949 () Bool)

(assert (=> b!919091 m!852949))

(assert (=> b!919091 m!852947))

(assert (=> b!919091 m!852949))

(declare-fun m!852951 () Bool)

(assert (=> b!919091 m!852951))

(declare-fun m!852953 () Bool)

(assert (=> b!919091 m!852953))

(declare-fun m!852955 () Bool)

(assert (=> b!919091 m!852955))

(declare-fun m!852957 () Bool)

(assert (=> b!919091 m!852957))

(declare-fun m!852959 () Bool)

(assert (=> b!919091 m!852959))

(assert (=> b!919091 m!852955))

(declare-fun m!852961 () Bool)

(assert (=> b!919091 m!852961))

(declare-fun m!852963 () Bool)

(assert (=> b!919091 m!852963))

(assert (=> b!919091 m!852943))

(declare-fun m!852965 () Bool)

(assert (=> b!919091 m!852965))

(declare-fun m!852967 () Bool)

(assert (=> b!919084 m!852967))

(declare-fun m!852969 () Bool)

(assert (=> b!919085 m!852969))

(declare-fun m!852971 () Bool)

(assert (=> mapNonEmpty!30993 m!852971))

(declare-fun m!852973 () Bool)

(assert (=> b!919083 m!852973))

(declare-fun m!852975 () Bool)

(assert (=> b!919082 m!852975))

(declare-fun m!852977 () Bool)

(assert (=> b!919082 m!852977))

(check-sat (not b!919088) (not b_lambda!13515) b_and!27723 tp_is_empty!19491 (not b!919085) (not b!919086) (not b!919084) (not b!919083) (not b_next!16983) (not start!78798) (not b!919091) (not b!919082) (not mapNonEmpty!30993))
(check-sat b_and!27723 (not b_next!16983))
