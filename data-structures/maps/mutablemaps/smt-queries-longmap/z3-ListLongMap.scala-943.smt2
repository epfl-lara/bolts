; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20768 () Bool)

(assert start!20768)

(declare-fun b_free!5415 () Bool)

(declare-fun b_next!5415 () Bool)

(assert (=> start!20768 (= b_free!5415 (not b_next!5415))))

(declare-fun tp!19277 () Bool)

(declare-fun b_and!12179 () Bool)

(assert (=> start!20768 (= tp!19277 b_and!12179)))

(declare-fun b!207792 () Bool)

(declare-fun e!135609 () Bool)

(declare-fun e!135607 () Bool)

(declare-fun mapRes!8975 () Bool)

(assert (=> b!207792 (= e!135609 (and e!135607 mapRes!8975))))

(declare-fun condMapEmpty!8975 () Bool)

(declare-datatypes ((V!6675 0))(
  ( (V!6676 (val!2680 Int)) )
))
(declare-datatypes ((ValueCell!2292 0))(
  ( (ValueCellFull!2292 (v!4646 V!6675)) (EmptyCell!2292) )
))
(declare-datatypes ((array!9746 0))(
  ( (array!9747 (arr!4623 (Array (_ BitVec 32) ValueCell!2292)) (size!4948 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9746)

(declare-fun mapDefault!8975 () ValueCell!2292)

(assert (=> b!207792 (= condMapEmpty!8975 (= (arr!4623 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2292)) mapDefault!8975)))))

(declare-fun mapIsEmpty!8975 () Bool)

(assert (=> mapIsEmpty!8975 mapRes!8975))

(declare-fun b!207793 () Bool)

(declare-fun res!100984 () Bool)

(declare-fun e!135606 () Bool)

(assert (=> b!207793 (=> (not res!100984) (not e!135606))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207793 (= res!100984 (validKeyInArray!0 k0!843))))

(declare-fun b!207794 () Bool)

(declare-fun tp_is_empty!5271 () Bool)

(assert (=> b!207794 (= e!135607 tp_is_empty!5271)))

(declare-fun b!207795 () Bool)

(declare-fun res!100979 () Bool)

(assert (=> b!207795 (=> (not res!100979) (not e!135606))))

(declare-datatypes ((array!9748 0))(
  ( (array!9749 (arr!4624 (Array (_ BitVec 32) (_ BitVec 64))) (size!4949 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9748)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9748 (_ BitVec 32)) Bool)

(assert (=> b!207795 (= res!100979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207796 () Bool)

(declare-fun res!100978 () Bool)

(assert (=> b!207796 (=> (not res!100978) (not e!135606))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!207796 (= res!100978 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4949 _keys!825))))))

(declare-fun mapNonEmpty!8975 () Bool)

(declare-fun tp!19276 () Bool)

(declare-fun e!135610 () Bool)

(assert (=> mapNonEmpty!8975 (= mapRes!8975 (and tp!19276 e!135610))))

(declare-fun mapKey!8975 () (_ BitVec 32))

(declare-fun mapRest!8975 () (Array (_ BitVec 32) ValueCell!2292))

(declare-fun mapValue!8975 () ValueCell!2292)

(assert (=> mapNonEmpty!8975 (= (arr!4623 _values!649) (store mapRest!8975 mapKey!8975 mapValue!8975))))

(declare-fun b!207797 () Bool)

(declare-fun res!100982 () Bool)

(assert (=> b!207797 (=> (not res!100982) (not e!135606))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!207797 (= res!100982 (and (= (size!4948 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4949 _keys!825) (size!4948 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207798 () Bool)

(assert (=> b!207798 (= e!135606 (not true))))

(declare-datatypes ((tuple2!4062 0))(
  ( (tuple2!4063 (_1!2041 (_ BitVec 64)) (_2!2041 V!6675)) )
))
(declare-datatypes ((List!2978 0))(
  ( (Nil!2975) (Cons!2974 (h!3616 tuple2!4062) (t!7917 List!2978)) )
))
(declare-datatypes ((ListLongMap!2989 0))(
  ( (ListLongMap!2990 (toList!1510 List!2978)) )
))
(declare-fun lt!106581 () ListLongMap!2989)

(declare-fun zeroValue!615 () V!6675)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6675)

(declare-fun getCurrentListMap!1072 (array!9748 array!9746 (_ BitVec 32) (_ BitVec 32) V!6675 V!6675 (_ BitVec 32) Int) ListLongMap!2989)

(assert (=> b!207798 (= lt!106581 (getCurrentListMap!1072 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106579 () array!9746)

(declare-fun lt!106584 () ListLongMap!2989)

(assert (=> b!207798 (= lt!106584 (getCurrentListMap!1072 _keys!825 lt!106579 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106580 () ListLongMap!2989)

(declare-fun lt!106585 () ListLongMap!2989)

(assert (=> b!207798 (and (= lt!106580 lt!106585) (= lt!106585 lt!106580))))

(declare-fun v!520 () V!6675)

(declare-fun lt!106582 () ListLongMap!2989)

(declare-fun +!527 (ListLongMap!2989 tuple2!4062) ListLongMap!2989)

(assert (=> b!207798 (= lt!106585 (+!527 lt!106582 (tuple2!4063 k0!843 v!520)))))

(declare-datatypes ((Unit!6349 0))(
  ( (Unit!6350) )
))
(declare-fun lt!106583 () Unit!6349)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!185 (array!9748 array!9746 (_ BitVec 32) (_ BitVec 32) V!6675 V!6675 (_ BitVec 32) (_ BitVec 64) V!6675 (_ BitVec 32) Int) Unit!6349)

(assert (=> b!207798 (= lt!106583 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!185 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!443 (array!9748 array!9746 (_ BitVec 32) (_ BitVec 32) V!6675 V!6675 (_ BitVec 32) Int) ListLongMap!2989)

(assert (=> b!207798 (= lt!106580 (getCurrentListMapNoExtraKeys!443 _keys!825 lt!106579 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207798 (= lt!106579 (array!9747 (store (arr!4623 _values!649) i!601 (ValueCellFull!2292 v!520)) (size!4948 _values!649)))))

(assert (=> b!207798 (= lt!106582 (getCurrentListMapNoExtraKeys!443 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207800 () Bool)

(declare-fun res!100980 () Bool)

(assert (=> b!207800 (=> (not res!100980) (not e!135606))))

(declare-datatypes ((List!2979 0))(
  ( (Nil!2976) (Cons!2975 (h!3617 (_ BitVec 64)) (t!7918 List!2979)) )
))
(declare-fun arrayNoDuplicates!0 (array!9748 (_ BitVec 32) List!2979) Bool)

(assert (=> b!207800 (= res!100980 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2976))))

(declare-fun b!207801 () Bool)

(assert (=> b!207801 (= e!135610 tp_is_empty!5271)))

(declare-fun b!207799 () Bool)

(declare-fun res!100983 () Bool)

(assert (=> b!207799 (=> (not res!100983) (not e!135606))))

(assert (=> b!207799 (= res!100983 (= (select (arr!4624 _keys!825) i!601) k0!843))))

(declare-fun res!100981 () Bool)

(assert (=> start!20768 (=> (not res!100981) (not e!135606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20768 (= res!100981 (validMask!0 mask!1149))))

(assert (=> start!20768 e!135606))

(declare-fun array_inv!3053 (array!9746) Bool)

(assert (=> start!20768 (and (array_inv!3053 _values!649) e!135609)))

(assert (=> start!20768 true))

(assert (=> start!20768 tp_is_empty!5271))

(declare-fun array_inv!3054 (array!9748) Bool)

(assert (=> start!20768 (array_inv!3054 _keys!825)))

(assert (=> start!20768 tp!19277))

(assert (= (and start!20768 res!100981) b!207797))

(assert (= (and b!207797 res!100982) b!207795))

(assert (= (and b!207795 res!100979) b!207800))

(assert (= (and b!207800 res!100980) b!207796))

(assert (= (and b!207796 res!100978) b!207793))

(assert (= (and b!207793 res!100984) b!207799))

(assert (= (and b!207799 res!100983) b!207798))

(assert (= (and b!207792 condMapEmpty!8975) mapIsEmpty!8975))

(assert (= (and b!207792 (not condMapEmpty!8975)) mapNonEmpty!8975))

(get-info :version)

(assert (= (and mapNonEmpty!8975 ((_ is ValueCellFull!2292) mapValue!8975)) b!207801))

(assert (= (and b!207792 ((_ is ValueCellFull!2292) mapDefault!8975)) b!207794))

(assert (= start!20768 b!207792))

(declare-fun m!235557 () Bool)

(assert (=> b!207800 m!235557))

(declare-fun m!235559 () Bool)

(assert (=> start!20768 m!235559))

(declare-fun m!235561 () Bool)

(assert (=> start!20768 m!235561))

(declare-fun m!235563 () Bool)

(assert (=> start!20768 m!235563))

(declare-fun m!235565 () Bool)

(assert (=> mapNonEmpty!8975 m!235565))

(declare-fun m!235567 () Bool)

(assert (=> b!207795 m!235567))

(declare-fun m!235569 () Bool)

(assert (=> b!207798 m!235569))

(declare-fun m!235571 () Bool)

(assert (=> b!207798 m!235571))

(declare-fun m!235573 () Bool)

(assert (=> b!207798 m!235573))

(declare-fun m!235575 () Bool)

(assert (=> b!207798 m!235575))

(declare-fun m!235577 () Bool)

(assert (=> b!207798 m!235577))

(declare-fun m!235579 () Bool)

(assert (=> b!207798 m!235579))

(declare-fun m!235581 () Bool)

(assert (=> b!207798 m!235581))

(declare-fun m!235583 () Bool)

(assert (=> b!207793 m!235583))

(declare-fun m!235585 () Bool)

(assert (=> b!207799 m!235585))

(check-sat b_and!12179 (not b!207800) (not start!20768) (not b!207798) tp_is_empty!5271 (not b!207795) (not b_next!5415) (not b!207793) (not mapNonEmpty!8975))
(check-sat b_and!12179 (not b_next!5415))
