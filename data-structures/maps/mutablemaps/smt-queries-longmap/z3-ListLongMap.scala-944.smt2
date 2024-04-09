; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20774 () Bool)

(assert start!20774)

(declare-fun b_free!5421 () Bool)

(declare-fun b_next!5421 () Bool)

(assert (=> start!20774 (= b_free!5421 (not b_next!5421))))

(declare-fun tp!19294 () Bool)

(declare-fun b_and!12185 () Bool)

(assert (=> start!20774 (= tp!19294 b_and!12185)))

(declare-fun b!207882 () Bool)

(declare-fun e!135652 () Bool)

(declare-fun tp_is_empty!5277 () Bool)

(assert (=> b!207882 (= e!135652 tp_is_empty!5277)))

(declare-fun b!207883 () Bool)

(declare-fun e!135651 () Bool)

(assert (=> b!207883 (= e!135651 tp_is_empty!5277)))

(declare-fun b!207884 () Bool)

(declare-fun res!101041 () Bool)

(declare-fun e!135654 () Bool)

(assert (=> b!207884 (=> (not res!101041) (not e!135654))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207884 (= res!101041 (validKeyInArray!0 k0!843))))

(declare-fun b!207886 () Bool)

(declare-fun res!101046 () Bool)

(assert (=> b!207886 (=> (not res!101046) (not e!135654))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9758 0))(
  ( (array!9759 (arr!4629 (Array (_ BitVec 32) (_ BitVec 64))) (size!4954 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9758)

(assert (=> b!207886 (= res!101046 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4954 _keys!825))))))

(declare-fun b!207887 () Bool)

(declare-fun res!101042 () Bool)

(assert (=> b!207887 (=> (not res!101042) (not e!135654))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9758 (_ BitVec 32)) Bool)

(assert (=> b!207887 (= res!101042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207888 () Bool)

(assert (=> b!207888 (= e!135654 (not true))))

(declare-datatypes ((V!6683 0))(
  ( (V!6684 (val!2683 Int)) )
))
(declare-datatypes ((tuple2!4068 0))(
  ( (tuple2!4069 (_1!2044 (_ BitVec 64)) (_2!2044 V!6683)) )
))
(declare-datatypes ((List!2984 0))(
  ( (Nil!2981) (Cons!2980 (h!3622 tuple2!4068) (t!7923 List!2984)) )
))
(declare-datatypes ((ListLongMap!2995 0))(
  ( (ListLongMap!2996 (toList!1513 List!2984)) )
))
(declare-fun lt!106645 () ListLongMap!2995)

(declare-datatypes ((ValueCell!2295 0))(
  ( (ValueCellFull!2295 (v!4649 V!6683)) (EmptyCell!2295) )
))
(declare-datatypes ((array!9760 0))(
  ( (array!9761 (arr!4630 (Array (_ BitVec 32) ValueCell!2295)) (size!4955 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9760)

(declare-fun zeroValue!615 () V!6683)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6683)

(declare-fun getCurrentListMap!1075 (array!9758 array!9760 (_ BitVec 32) (_ BitVec 32) V!6683 V!6683 (_ BitVec 32) Int) ListLongMap!2995)

(assert (=> b!207888 (= lt!106645 (getCurrentListMap!1075 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106646 () ListLongMap!2995)

(declare-fun lt!106648 () array!9760)

(assert (=> b!207888 (= lt!106646 (getCurrentListMap!1075 _keys!825 lt!106648 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106642 () ListLongMap!2995)

(declare-fun lt!106644 () ListLongMap!2995)

(assert (=> b!207888 (and (= lt!106642 lt!106644) (= lt!106644 lt!106642))))

(declare-fun lt!106647 () ListLongMap!2995)

(declare-fun v!520 () V!6683)

(declare-fun +!530 (ListLongMap!2995 tuple2!4068) ListLongMap!2995)

(assert (=> b!207888 (= lt!106644 (+!530 lt!106647 (tuple2!4069 k0!843 v!520)))))

(declare-datatypes ((Unit!6355 0))(
  ( (Unit!6356) )
))
(declare-fun lt!106643 () Unit!6355)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!188 (array!9758 array!9760 (_ BitVec 32) (_ BitVec 32) V!6683 V!6683 (_ BitVec 32) (_ BitVec 64) V!6683 (_ BitVec 32) Int) Unit!6355)

(assert (=> b!207888 (= lt!106643 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!188 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!446 (array!9758 array!9760 (_ BitVec 32) (_ BitVec 32) V!6683 V!6683 (_ BitVec 32) Int) ListLongMap!2995)

(assert (=> b!207888 (= lt!106642 (getCurrentListMapNoExtraKeys!446 _keys!825 lt!106648 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207888 (= lt!106648 (array!9761 (store (arr!4630 _values!649) i!601 (ValueCellFull!2295 v!520)) (size!4955 _values!649)))))

(assert (=> b!207888 (= lt!106647 (getCurrentListMapNoExtraKeys!446 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!8984 () Bool)

(declare-fun mapRes!8984 () Bool)

(declare-fun tp!19295 () Bool)

(assert (=> mapNonEmpty!8984 (= mapRes!8984 (and tp!19295 e!135651))))

(declare-fun mapRest!8984 () (Array (_ BitVec 32) ValueCell!2295))

(declare-fun mapValue!8984 () ValueCell!2295)

(declare-fun mapKey!8984 () (_ BitVec 32))

(assert (=> mapNonEmpty!8984 (= (arr!4630 _values!649) (store mapRest!8984 mapKey!8984 mapValue!8984))))

(declare-fun b!207889 () Bool)

(declare-fun res!101043 () Bool)

(assert (=> b!207889 (=> (not res!101043) (not e!135654))))

(assert (=> b!207889 (= res!101043 (= (select (arr!4629 _keys!825) i!601) k0!843))))

(declare-fun b!207890 () Bool)

(declare-fun e!135653 () Bool)

(assert (=> b!207890 (= e!135653 (and e!135652 mapRes!8984))))

(declare-fun condMapEmpty!8984 () Bool)

(declare-fun mapDefault!8984 () ValueCell!2295)

(assert (=> b!207890 (= condMapEmpty!8984 (= (arr!4630 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2295)) mapDefault!8984)))))

(declare-fun b!207885 () Bool)

(declare-fun res!101044 () Bool)

(assert (=> b!207885 (=> (not res!101044) (not e!135654))))

(assert (=> b!207885 (= res!101044 (and (= (size!4955 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4954 _keys!825) (size!4955 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!101045 () Bool)

(assert (=> start!20774 (=> (not res!101045) (not e!135654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20774 (= res!101045 (validMask!0 mask!1149))))

(assert (=> start!20774 e!135654))

(declare-fun array_inv!3057 (array!9760) Bool)

(assert (=> start!20774 (and (array_inv!3057 _values!649) e!135653)))

(assert (=> start!20774 true))

(assert (=> start!20774 tp_is_empty!5277))

(declare-fun array_inv!3058 (array!9758) Bool)

(assert (=> start!20774 (array_inv!3058 _keys!825)))

(assert (=> start!20774 tp!19294))

(declare-fun b!207891 () Bool)

(declare-fun res!101047 () Bool)

(assert (=> b!207891 (=> (not res!101047) (not e!135654))))

(declare-datatypes ((List!2985 0))(
  ( (Nil!2982) (Cons!2981 (h!3623 (_ BitVec 64)) (t!7924 List!2985)) )
))
(declare-fun arrayNoDuplicates!0 (array!9758 (_ BitVec 32) List!2985) Bool)

(assert (=> b!207891 (= res!101047 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2982))))

(declare-fun mapIsEmpty!8984 () Bool)

(assert (=> mapIsEmpty!8984 mapRes!8984))

(assert (= (and start!20774 res!101045) b!207885))

(assert (= (and b!207885 res!101044) b!207887))

(assert (= (and b!207887 res!101042) b!207891))

(assert (= (and b!207891 res!101047) b!207886))

(assert (= (and b!207886 res!101046) b!207884))

(assert (= (and b!207884 res!101041) b!207889))

(assert (= (and b!207889 res!101043) b!207888))

(assert (= (and b!207890 condMapEmpty!8984) mapIsEmpty!8984))

(assert (= (and b!207890 (not condMapEmpty!8984)) mapNonEmpty!8984))

(get-info :version)

(assert (= (and mapNonEmpty!8984 ((_ is ValueCellFull!2295) mapValue!8984)) b!207883))

(assert (= (and b!207890 ((_ is ValueCellFull!2295) mapDefault!8984)) b!207882))

(assert (= start!20774 b!207890))

(declare-fun m!235647 () Bool)

(assert (=> b!207891 m!235647))

(declare-fun m!235649 () Bool)

(assert (=> b!207888 m!235649))

(declare-fun m!235651 () Bool)

(assert (=> b!207888 m!235651))

(declare-fun m!235653 () Bool)

(assert (=> b!207888 m!235653))

(declare-fun m!235655 () Bool)

(assert (=> b!207888 m!235655))

(declare-fun m!235657 () Bool)

(assert (=> b!207888 m!235657))

(declare-fun m!235659 () Bool)

(assert (=> b!207888 m!235659))

(declare-fun m!235661 () Bool)

(assert (=> b!207888 m!235661))

(declare-fun m!235663 () Bool)

(assert (=> b!207887 m!235663))

(declare-fun m!235665 () Bool)

(assert (=> mapNonEmpty!8984 m!235665))

(declare-fun m!235667 () Bool)

(assert (=> b!207889 m!235667))

(declare-fun m!235669 () Bool)

(assert (=> b!207884 m!235669))

(declare-fun m!235671 () Bool)

(assert (=> start!20774 m!235671))

(declare-fun m!235673 () Bool)

(assert (=> start!20774 m!235673))

(declare-fun m!235675 () Bool)

(assert (=> start!20774 m!235675))

(check-sat (not b!207891) (not b_next!5421) (not start!20774) (not b!207887) tp_is_empty!5277 (not b!207884) (not mapNonEmpty!8984) b_and!12185 (not b!207888))
(check-sat b_and!12185 (not b_next!5421))
