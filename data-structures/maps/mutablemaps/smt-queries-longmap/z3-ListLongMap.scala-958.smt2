; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20858 () Bool)

(assert start!20858)

(declare-fun b_free!5499 () Bool)

(declare-fun b_next!5499 () Bool)

(assert (=> start!20858 (= b_free!5499 (not b_next!5499))))

(declare-fun tp!19538 () Bool)

(declare-fun b_and!12263 () Bool)

(assert (=> start!20858 (= tp!19538 b_and!12263)))

(declare-fun res!101890 () Bool)

(declare-fun e!136281 () Bool)

(assert (=> start!20858 (=> (not res!101890) (not e!136281))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20858 (= res!101890 (validMask!0 mask!1149))))

(assert (=> start!20858 e!136281))

(declare-datatypes ((V!6795 0))(
  ( (V!6796 (val!2725 Int)) )
))
(declare-datatypes ((ValueCell!2337 0))(
  ( (ValueCellFull!2337 (v!4691 V!6795)) (EmptyCell!2337) )
))
(declare-datatypes ((array!9920 0))(
  ( (array!9921 (arr!4710 (Array (_ BitVec 32) ValueCell!2337)) (size!5035 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9920)

(declare-fun e!136284 () Bool)

(declare-fun array_inv!3111 (array!9920) Bool)

(assert (=> start!20858 (and (array_inv!3111 _values!649) e!136284)))

(assert (=> start!20858 true))

(declare-fun tp_is_empty!5361 () Bool)

(assert (=> start!20858 tp_is_empty!5361))

(declare-datatypes ((array!9922 0))(
  ( (array!9923 (arr!4711 (Array (_ BitVec 32) (_ BitVec 64))) (size!5036 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9922)

(declare-fun array_inv!3112 (array!9922) Bool)

(assert (=> start!20858 (array_inv!3112 _keys!825)))

(assert (=> start!20858 tp!19538))

(declare-fun b!209106 () Bool)

(declare-fun res!101889 () Bool)

(assert (=> b!209106 (=> (not res!101889) (not e!136281))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!209106 (= res!101889 (= (select (arr!4711 _keys!825) i!601) k0!843))))

(declare-fun b!209107 () Bool)

(declare-fun e!136282 () Bool)

(assert (=> b!209107 (= e!136282 tp_is_empty!5361)))

(declare-fun b!209108 () Bool)

(declare-fun res!101891 () Bool)

(assert (=> b!209108 (=> (not res!101891) (not e!136281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9922 (_ BitVec 32)) Bool)

(assert (=> b!209108 (= res!101891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!209109 () Bool)

(declare-fun res!101893 () Bool)

(assert (=> b!209109 (=> (not res!101893) (not e!136281))))

(assert (=> b!209109 (= res!101893 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5036 _keys!825))))))

(declare-fun b!209110 () Bool)

(declare-fun e!136283 () Bool)

(assert (=> b!209110 (= e!136283 tp_is_empty!5361)))

(declare-fun b!209111 () Bool)

(declare-fun res!101887 () Bool)

(assert (=> b!209111 (=> (not res!101887) (not e!136281))))

(declare-datatypes ((List!3035 0))(
  ( (Nil!3032) (Cons!3031 (h!3673 (_ BitVec 64)) (t!7974 List!3035)) )
))
(declare-fun arrayNoDuplicates!0 (array!9922 (_ BitVec 32) List!3035) Bool)

(assert (=> b!209111 (= res!101887 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3032))))

(declare-fun b!209112 () Bool)

(assert (=> b!209112 (= e!136281 false)))

(declare-datatypes ((tuple2!4116 0))(
  ( (tuple2!4117 (_1!2068 (_ BitVec 64)) (_2!2068 V!6795)) )
))
(declare-datatypes ((List!3036 0))(
  ( (Nil!3033) (Cons!3032 (h!3674 tuple2!4116) (t!7975 List!3036)) )
))
(declare-datatypes ((ListLongMap!3043 0))(
  ( (ListLongMap!3044 (toList!1537 List!3036)) )
))
(declare-fun lt!106951 () ListLongMap!3043)

(declare-fun v!520 () V!6795)

(declare-fun zeroValue!615 () V!6795)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6795)

(declare-fun getCurrentListMapNoExtraKeys!470 (array!9922 array!9920 (_ BitVec 32) (_ BitVec 32) V!6795 V!6795 (_ BitVec 32) Int) ListLongMap!3043)

(assert (=> b!209112 (= lt!106951 (getCurrentListMapNoExtraKeys!470 _keys!825 (array!9921 (store (arr!4710 _values!649) i!601 (ValueCellFull!2337 v!520)) (size!5035 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106950 () ListLongMap!3043)

(assert (=> b!209112 (= lt!106950 (getCurrentListMapNoExtraKeys!470 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!9110 () Bool)

(declare-fun mapRes!9110 () Bool)

(assert (=> mapIsEmpty!9110 mapRes!9110))

(declare-fun b!209113 () Bool)

(assert (=> b!209113 (= e!136284 (and e!136283 mapRes!9110))))

(declare-fun condMapEmpty!9110 () Bool)

(declare-fun mapDefault!9110 () ValueCell!2337)

(assert (=> b!209113 (= condMapEmpty!9110 (= (arr!4710 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2337)) mapDefault!9110)))))

(declare-fun mapNonEmpty!9110 () Bool)

(declare-fun tp!19537 () Bool)

(assert (=> mapNonEmpty!9110 (= mapRes!9110 (and tp!19537 e!136282))))

(declare-fun mapRest!9110 () (Array (_ BitVec 32) ValueCell!2337))

(declare-fun mapKey!9110 () (_ BitVec 32))

(declare-fun mapValue!9110 () ValueCell!2337)

(assert (=> mapNonEmpty!9110 (= (arr!4710 _values!649) (store mapRest!9110 mapKey!9110 mapValue!9110))))

(declare-fun b!209114 () Bool)

(declare-fun res!101892 () Bool)

(assert (=> b!209114 (=> (not res!101892) (not e!136281))))

(assert (=> b!209114 (= res!101892 (and (= (size!5035 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5036 _keys!825) (size!5035 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!209115 () Bool)

(declare-fun res!101888 () Bool)

(assert (=> b!209115 (=> (not res!101888) (not e!136281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209115 (= res!101888 (validKeyInArray!0 k0!843))))

(assert (= (and start!20858 res!101890) b!209114))

(assert (= (and b!209114 res!101892) b!209108))

(assert (= (and b!209108 res!101891) b!209111))

(assert (= (and b!209111 res!101887) b!209109))

(assert (= (and b!209109 res!101893) b!209115))

(assert (= (and b!209115 res!101888) b!209106))

(assert (= (and b!209106 res!101889) b!209112))

(assert (= (and b!209113 condMapEmpty!9110) mapIsEmpty!9110))

(assert (= (and b!209113 (not condMapEmpty!9110)) mapNonEmpty!9110))

(get-info :version)

(assert (= (and mapNonEmpty!9110 ((_ is ValueCellFull!2337) mapValue!9110)) b!209107))

(assert (= (and b!209113 ((_ is ValueCellFull!2337) mapDefault!9110)) b!209110))

(assert (= start!20858 b!209113))

(declare-fun m!236569 () Bool)

(assert (=> b!209112 m!236569))

(declare-fun m!236571 () Bool)

(assert (=> b!209112 m!236571))

(declare-fun m!236573 () Bool)

(assert (=> b!209112 m!236573))

(declare-fun m!236575 () Bool)

(assert (=> mapNonEmpty!9110 m!236575))

(declare-fun m!236577 () Bool)

(assert (=> b!209106 m!236577))

(declare-fun m!236579 () Bool)

(assert (=> b!209115 m!236579))

(declare-fun m!236581 () Bool)

(assert (=> start!20858 m!236581))

(declare-fun m!236583 () Bool)

(assert (=> start!20858 m!236583))

(declare-fun m!236585 () Bool)

(assert (=> start!20858 m!236585))

(declare-fun m!236587 () Bool)

(assert (=> b!209111 m!236587))

(declare-fun m!236589 () Bool)

(assert (=> b!209108 m!236589))

(check-sat (not b!209112) (not start!20858) (not b!209115) (not mapNonEmpty!9110) (not b_next!5499) (not b!209108) b_and!12263 tp_is_empty!5361 (not b!209111))
(check-sat b_and!12263 (not b_next!5499))
