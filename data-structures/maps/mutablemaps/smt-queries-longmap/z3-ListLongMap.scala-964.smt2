; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20934 () Bool)

(assert start!20934)

(declare-fun b_free!5535 () Bool)

(declare-fun b_next!5535 () Bool)

(assert (=> start!20934 (= b_free!5535 (not b_next!5535))))

(declare-fun tp!19652 () Bool)

(declare-fun b_and!12323 () Bool)

(assert (=> start!20934 (= tp!19652 b_and!12323)))

(declare-datatypes ((V!6843 0))(
  ( (V!6844 (val!2743 Int)) )
))
(declare-datatypes ((tuple2!4142 0))(
  ( (tuple2!4143 (_1!2081 (_ BitVec 64)) (_2!2081 V!6843)) )
))
(declare-datatypes ((List!3060 0))(
  ( (Nil!3057) (Cons!3056 (h!3698 tuple2!4142) (t!8003 List!3060)) )
))
(declare-datatypes ((ListLongMap!3069 0))(
  ( (ListLongMap!3070 (toList!1550 List!3060)) )
))
(declare-fun lt!107544 () ListLongMap!3069)

(declare-fun lt!107547 () tuple2!4142)

(declare-fun lt!107545 () ListLongMap!3069)

(declare-fun lt!107542 () tuple2!4142)

(declare-fun b!210054 () Bool)

(declare-fun e!136817 () Bool)

(declare-fun +!543 (ListLongMap!3069 tuple2!4142) ListLongMap!3069)

(assert (=> b!210054 (= e!136817 (= lt!107544 (+!543 (+!543 lt!107545 lt!107547) lt!107542)))))

(declare-fun b!210055 () Bool)

(declare-fun e!136819 () Bool)

(declare-fun tp_is_empty!5397 () Bool)

(assert (=> b!210055 (= e!136819 tp_is_empty!5397)))

(declare-fun b!210056 () Bool)

(declare-fun res!102461 () Bool)

(declare-fun e!136818 () Bool)

(assert (=> b!210056 (=> (not res!102461) (not e!136818))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!210056 (= res!102461 (validKeyInArray!0 k0!843))))

(declare-fun e!136823 () Bool)

(declare-fun lt!107549 () ListLongMap!3069)

(declare-fun lt!107548 () ListLongMap!3069)

(declare-fun b!210057 () Bool)

(assert (=> b!210057 (= e!136823 (= lt!107548 (+!543 (+!543 lt!107549 lt!107547) lt!107542)))))

(assert (=> b!210057 e!136817))

(declare-fun res!102457 () Bool)

(assert (=> b!210057 (=> (not res!102457) (not e!136817))))

(declare-fun lt!107541 () ListLongMap!3069)

(assert (=> b!210057 (= res!102457 (= lt!107548 (+!543 (+!543 lt!107541 lt!107547) lt!107542)))))

(declare-fun minValue!615 () V!6843)

(assert (=> b!210057 (= lt!107542 (tuple2!4143 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun zeroValue!615 () V!6843)

(assert (=> b!210057 (= lt!107547 (tuple2!4143 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!210058 () Bool)

(declare-fun res!102462 () Bool)

(assert (=> b!210058 (=> (not res!102462) (not e!136818))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9992 0))(
  ( (array!9993 (arr!4744 (Array (_ BitVec 32) (_ BitVec 64))) (size!5069 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9992)

(assert (=> b!210058 (= res!102462 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5069 _keys!825))))))

(declare-fun mapNonEmpty!9170 () Bool)

(declare-fun mapRes!9170 () Bool)

(declare-fun tp!19651 () Bool)

(assert (=> mapNonEmpty!9170 (= mapRes!9170 (and tp!19651 e!136819))))

(declare-datatypes ((ValueCell!2355 0))(
  ( (ValueCellFull!2355 (v!4717 V!6843)) (EmptyCell!2355) )
))
(declare-fun mapValue!9170 () ValueCell!2355)

(declare-fun mapRest!9170 () (Array (_ BitVec 32) ValueCell!2355))

(declare-fun mapKey!9170 () (_ BitVec 32))

(declare-datatypes ((array!9994 0))(
  ( (array!9995 (arr!4745 (Array (_ BitVec 32) ValueCell!2355)) (size!5070 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9994)

(assert (=> mapNonEmpty!9170 (= (arr!4745 _values!649) (store mapRest!9170 mapKey!9170 mapValue!9170))))

(declare-fun mapIsEmpty!9170 () Bool)

(assert (=> mapIsEmpty!9170 mapRes!9170))

(declare-fun b!210060 () Bool)

(declare-fun res!102463 () Bool)

(assert (=> b!210060 (=> (not res!102463) (not e!136818))))

(declare-datatypes ((List!3061 0))(
  ( (Nil!3058) (Cons!3057 (h!3699 (_ BitVec 64)) (t!8004 List!3061)) )
))
(declare-fun arrayNoDuplicates!0 (array!9992 (_ BitVec 32) List!3061) Bool)

(assert (=> b!210060 (= res!102463 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3058))))

(declare-fun b!210061 () Bool)

(declare-fun e!136821 () Bool)

(assert (=> b!210061 (= e!136821 tp_is_empty!5397)))

(declare-fun b!210062 () Bool)

(declare-fun res!102460 () Bool)

(assert (=> b!210062 (=> (not res!102460) (not e!136818))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!210062 (= res!102460 (and (= (size!5070 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5069 _keys!825) (size!5070 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!210063 () Bool)

(declare-fun res!102458 () Bool)

(assert (=> b!210063 (=> (not res!102458) (not e!136818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9992 (_ BitVec 32)) Bool)

(assert (=> b!210063 (= res!102458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!210064 () Bool)

(assert (=> b!210064 (= e!136818 (not e!136823))))

(declare-fun res!102465 () Bool)

(assert (=> b!210064 (=> res!102465 e!136823)))

(assert (=> b!210064 (= res!102465 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1082 (array!9992 array!9994 (_ BitVec 32) (_ BitVec 32) V!6843 V!6843 (_ BitVec 32) Int) ListLongMap!3069)

(assert (=> b!210064 (= lt!107544 (getCurrentListMap!1082 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107543 () array!9994)

(assert (=> b!210064 (= lt!107548 (getCurrentListMap!1082 _keys!825 lt!107543 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!210064 (and (= lt!107541 lt!107549) (= lt!107549 lt!107541))))

(declare-fun v!520 () V!6843)

(assert (=> b!210064 (= lt!107549 (+!543 lt!107545 (tuple2!4143 k0!843 v!520)))))

(declare-datatypes ((Unit!6381 0))(
  ( (Unit!6382) )
))
(declare-fun lt!107546 () Unit!6381)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!199 (array!9992 array!9994 (_ BitVec 32) (_ BitVec 32) V!6843 V!6843 (_ BitVec 32) (_ BitVec 64) V!6843 (_ BitVec 32) Int) Unit!6381)

(assert (=> b!210064 (= lt!107546 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!199 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!481 (array!9992 array!9994 (_ BitVec 32) (_ BitVec 32) V!6843 V!6843 (_ BitVec 32) Int) ListLongMap!3069)

(assert (=> b!210064 (= lt!107541 (getCurrentListMapNoExtraKeys!481 _keys!825 lt!107543 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!210064 (= lt!107543 (array!9995 (store (arr!4745 _values!649) i!601 (ValueCellFull!2355 v!520)) (size!5070 _values!649)))))

(assert (=> b!210064 (= lt!107545 (getCurrentListMapNoExtraKeys!481 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!210065 () Bool)

(declare-fun e!136820 () Bool)

(assert (=> b!210065 (= e!136820 (and e!136821 mapRes!9170))))

(declare-fun condMapEmpty!9170 () Bool)

(declare-fun mapDefault!9170 () ValueCell!2355)

(assert (=> b!210065 (= condMapEmpty!9170 (= (arr!4745 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2355)) mapDefault!9170)))))

(declare-fun res!102464 () Bool)

(assert (=> start!20934 (=> (not res!102464) (not e!136818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20934 (= res!102464 (validMask!0 mask!1149))))

(assert (=> start!20934 e!136818))

(declare-fun array_inv!3131 (array!9994) Bool)

(assert (=> start!20934 (and (array_inv!3131 _values!649) e!136820)))

(assert (=> start!20934 true))

(assert (=> start!20934 tp_is_empty!5397))

(declare-fun array_inv!3132 (array!9992) Bool)

(assert (=> start!20934 (array_inv!3132 _keys!825)))

(assert (=> start!20934 tp!19652))

(declare-fun b!210059 () Bool)

(declare-fun res!102459 () Bool)

(assert (=> b!210059 (=> (not res!102459) (not e!136818))))

(assert (=> b!210059 (= res!102459 (= (select (arr!4744 _keys!825) i!601) k0!843))))

(assert (= (and start!20934 res!102464) b!210062))

(assert (= (and b!210062 res!102460) b!210063))

(assert (= (and b!210063 res!102458) b!210060))

(assert (= (and b!210060 res!102463) b!210058))

(assert (= (and b!210058 res!102462) b!210056))

(assert (= (and b!210056 res!102461) b!210059))

(assert (= (and b!210059 res!102459) b!210064))

(assert (= (and b!210064 (not res!102465)) b!210057))

(assert (= (and b!210057 res!102457) b!210054))

(assert (= (and b!210065 condMapEmpty!9170) mapIsEmpty!9170))

(assert (= (and b!210065 (not condMapEmpty!9170)) mapNonEmpty!9170))

(get-info :version)

(assert (= (and mapNonEmpty!9170 ((_ is ValueCellFull!2355) mapValue!9170)) b!210055))

(assert (= (and b!210065 ((_ is ValueCellFull!2355) mapDefault!9170)) b!210061))

(assert (= start!20934 b!210065))

(declare-fun m!237521 () Bool)

(assert (=> mapNonEmpty!9170 m!237521))

(declare-fun m!237523 () Bool)

(assert (=> b!210059 m!237523))

(declare-fun m!237525 () Bool)

(assert (=> b!210064 m!237525))

(declare-fun m!237527 () Bool)

(assert (=> b!210064 m!237527))

(declare-fun m!237529 () Bool)

(assert (=> b!210064 m!237529))

(declare-fun m!237531 () Bool)

(assert (=> b!210064 m!237531))

(declare-fun m!237533 () Bool)

(assert (=> b!210064 m!237533))

(declare-fun m!237535 () Bool)

(assert (=> b!210064 m!237535))

(declare-fun m!237537 () Bool)

(assert (=> b!210064 m!237537))

(declare-fun m!237539 () Bool)

(assert (=> b!210056 m!237539))

(declare-fun m!237541 () Bool)

(assert (=> b!210057 m!237541))

(assert (=> b!210057 m!237541))

(declare-fun m!237543 () Bool)

(assert (=> b!210057 m!237543))

(declare-fun m!237545 () Bool)

(assert (=> b!210057 m!237545))

(assert (=> b!210057 m!237545))

(declare-fun m!237547 () Bool)

(assert (=> b!210057 m!237547))

(declare-fun m!237549 () Bool)

(assert (=> start!20934 m!237549))

(declare-fun m!237551 () Bool)

(assert (=> start!20934 m!237551))

(declare-fun m!237553 () Bool)

(assert (=> start!20934 m!237553))

(declare-fun m!237555 () Bool)

(assert (=> b!210063 m!237555))

(declare-fun m!237557 () Bool)

(assert (=> b!210060 m!237557))

(declare-fun m!237559 () Bool)

(assert (=> b!210054 m!237559))

(assert (=> b!210054 m!237559))

(declare-fun m!237561 () Bool)

(assert (=> b!210054 m!237561))

(check-sat (not start!20934) (not b!210056) (not b!210063) (not mapNonEmpty!9170) (not b_next!5535) b_and!12323 (not b!210064) (not b!210060) (not b!210057) (not b!210054) tp_is_empty!5397)
(check-sat b_and!12323 (not b_next!5535))
