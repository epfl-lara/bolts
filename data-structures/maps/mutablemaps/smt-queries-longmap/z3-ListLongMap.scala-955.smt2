; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20840 () Bool)

(assert start!20840)

(declare-fun b_free!5481 () Bool)

(declare-fun b_next!5481 () Bool)

(assert (=> start!20840 (= b_free!5481 (not b_next!5481))))

(declare-fun tp!19484 () Bool)

(declare-fun b_and!12245 () Bool)

(assert (=> start!20840 (= tp!19484 b_and!12245)))

(declare-fun res!101699 () Bool)

(declare-fun e!136149 () Bool)

(assert (=> start!20840 (=> (not res!101699) (not e!136149))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20840 (= res!101699 (validMask!0 mask!1149))))

(assert (=> start!20840 e!136149))

(declare-datatypes ((V!6771 0))(
  ( (V!6772 (val!2716 Int)) )
))
(declare-datatypes ((ValueCell!2328 0))(
  ( (ValueCellFull!2328 (v!4682 V!6771)) (EmptyCell!2328) )
))
(declare-datatypes ((array!9888 0))(
  ( (array!9889 (arr!4694 (Array (_ BitVec 32) ValueCell!2328)) (size!5019 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9888)

(declare-fun e!136148 () Bool)

(declare-fun array_inv!3103 (array!9888) Bool)

(assert (=> start!20840 (and (array_inv!3103 _values!649) e!136148)))

(assert (=> start!20840 true))

(declare-fun tp_is_empty!5343 () Bool)

(assert (=> start!20840 tp_is_empty!5343))

(declare-datatypes ((array!9890 0))(
  ( (array!9891 (arr!4695 (Array (_ BitVec 32) (_ BitVec 64))) (size!5020 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9890)

(declare-fun array_inv!3104 (array!9890) Bool)

(assert (=> start!20840 (array_inv!3104 _keys!825)))

(assert (=> start!20840 tp!19484))

(declare-fun mapNonEmpty!9083 () Bool)

(declare-fun mapRes!9083 () Bool)

(declare-fun tp!19483 () Bool)

(declare-fun e!136146 () Bool)

(assert (=> mapNonEmpty!9083 (= mapRes!9083 (and tp!19483 e!136146))))

(declare-fun mapValue!9083 () ValueCell!2328)

(declare-fun mapKey!9083 () (_ BitVec 32))

(declare-fun mapRest!9083 () (Array (_ BitVec 32) ValueCell!2328))

(assert (=> mapNonEmpty!9083 (= (arr!4694 _values!649) (store mapRest!9083 mapKey!9083 mapValue!9083))))

(declare-fun b!208836 () Bool)

(declare-fun res!101702 () Bool)

(assert (=> b!208836 (=> (not res!101702) (not e!136149))))

(declare-datatypes ((List!3028 0))(
  ( (Nil!3025) (Cons!3024 (h!3666 (_ BitVec 64)) (t!7967 List!3028)) )
))
(declare-fun arrayNoDuplicates!0 (array!9890 (_ BitVec 32) List!3028) Bool)

(assert (=> b!208836 (= res!101702 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3025))))

(declare-fun b!208837 () Bool)

(declare-fun res!101703 () Bool)

(assert (=> b!208837 (=> (not res!101703) (not e!136149))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208837 (= res!101703 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5020 _keys!825))))))

(declare-fun b!208838 () Bool)

(assert (=> b!208838 (= e!136149 false)))

(declare-fun v!520 () V!6771)

(declare-fun zeroValue!615 () V!6771)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6771)

(declare-datatypes ((tuple2!4108 0))(
  ( (tuple2!4109 (_1!2064 (_ BitVec 64)) (_2!2064 V!6771)) )
))
(declare-datatypes ((List!3029 0))(
  ( (Nil!3026) (Cons!3025 (h!3667 tuple2!4108) (t!7968 List!3029)) )
))
(declare-datatypes ((ListLongMap!3035 0))(
  ( (ListLongMap!3036 (toList!1533 List!3029)) )
))
(declare-fun lt!106897 () ListLongMap!3035)

(declare-fun getCurrentListMapNoExtraKeys!466 (array!9890 array!9888 (_ BitVec 32) (_ BitVec 32) V!6771 V!6771 (_ BitVec 32) Int) ListLongMap!3035)

(assert (=> b!208838 (= lt!106897 (getCurrentListMapNoExtraKeys!466 _keys!825 (array!9889 (store (arr!4694 _values!649) i!601 (ValueCellFull!2328 v!520)) (size!5019 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106896 () ListLongMap!3035)

(assert (=> b!208838 (= lt!106896 (getCurrentListMapNoExtraKeys!466 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208839 () Bool)

(declare-fun res!101698 () Bool)

(assert (=> b!208839 (=> (not res!101698) (not e!136149))))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!208839 (= res!101698 (= (select (arr!4695 _keys!825) i!601) k0!843))))

(declare-fun b!208840 () Bool)

(declare-fun res!101704 () Bool)

(assert (=> b!208840 (=> (not res!101704) (not e!136149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9890 (_ BitVec 32)) Bool)

(assert (=> b!208840 (= res!101704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208841 () Bool)

(declare-fun res!101700 () Bool)

(assert (=> b!208841 (=> (not res!101700) (not e!136149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208841 (= res!101700 (validKeyInArray!0 k0!843))))

(declare-fun b!208842 () Bool)

(declare-fun res!101701 () Bool)

(assert (=> b!208842 (=> (not res!101701) (not e!136149))))

(assert (=> b!208842 (= res!101701 (and (= (size!5019 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5020 _keys!825) (size!5019 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208843 () Bool)

(declare-fun e!136150 () Bool)

(assert (=> b!208843 (= e!136148 (and e!136150 mapRes!9083))))

(declare-fun condMapEmpty!9083 () Bool)

(declare-fun mapDefault!9083 () ValueCell!2328)

(assert (=> b!208843 (= condMapEmpty!9083 (= (arr!4694 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2328)) mapDefault!9083)))))

(declare-fun b!208844 () Bool)

(assert (=> b!208844 (= e!136146 tp_is_empty!5343)))

(declare-fun mapIsEmpty!9083 () Bool)

(assert (=> mapIsEmpty!9083 mapRes!9083))

(declare-fun b!208845 () Bool)

(assert (=> b!208845 (= e!136150 tp_is_empty!5343)))

(assert (= (and start!20840 res!101699) b!208842))

(assert (= (and b!208842 res!101701) b!208840))

(assert (= (and b!208840 res!101704) b!208836))

(assert (= (and b!208836 res!101702) b!208837))

(assert (= (and b!208837 res!101703) b!208841))

(assert (= (and b!208841 res!101700) b!208839))

(assert (= (and b!208839 res!101698) b!208838))

(assert (= (and b!208843 condMapEmpty!9083) mapIsEmpty!9083))

(assert (= (and b!208843 (not condMapEmpty!9083)) mapNonEmpty!9083))

(get-info :version)

(assert (= (and mapNonEmpty!9083 ((_ is ValueCellFull!2328) mapValue!9083)) b!208844))

(assert (= (and b!208843 ((_ is ValueCellFull!2328) mapDefault!9083)) b!208845))

(assert (= start!20840 b!208843))

(declare-fun m!236371 () Bool)

(assert (=> start!20840 m!236371))

(declare-fun m!236373 () Bool)

(assert (=> start!20840 m!236373))

(declare-fun m!236375 () Bool)

(assert (=> start!20840 m!236375))

(declare-fun m!236377 () Bool)

(assert (=> b!208838 m!236377))

(declare-fun m!236379 () Bool)

(assert (=> b!208838 m!236379))

(declare-fun m!236381 () Bool)

(assert (=> b!208838 m!236381))

(declare-fun m!236383 () Bool)

(assert (=> b!208841 m!236383))

(declare-fun m!236385 () Bool)

(assert (=> b!208840 m!236385))

(declare-fun m!236387 () Bool)

(assert (=> mapNonEmpty!9083 m!236387))

(declare-fun m!236389 () Bool)

(assert (=> b!208839 m!236389))

(declare-fun m!236391 () Bool)

(assert (=> b!208836 m!236391))

(check-sat (not start!20840) (not b!208838) (not b!208836) (not b!208841) tp_is_empty!5343 b_and!12245 (not b!208840) (not mapNonEmpty!9083) (not b_next!5481))
(check-sat b_and!12245 (not b_next!5481))
