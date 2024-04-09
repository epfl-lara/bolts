; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20836 () Bool)

(assert start!20836)

(declare-fun b_free!5477 () Bool)

(declare-fun b_next!5477 () Bool)

(assert (=> start!20836 (= b_free!5477 (not b_next!5477))))

(declare-fun tp!19471 () Bool)

(declare-fun b_and!12241 () Bool)

(assert (=> start!20836 (= tp!19471 b_and!12241)))

(declare-fun mapNonEmpty!9077 () Bool)

(declare-fun mapRes!9077 () Bool)

(declare-fun tp!19472 () Bool)

(declare-fun e!136116 () Bool)

(assert (=> mapNonEmpty!9077 (= mapRes!9077 (and tp!19472 e!136116))))

(declare-fun mapKey!9077 () (_ BitVec 32))

(declare-datatypes ((V!6765 0))(
  ( (V!6766 (val!2714 Int)) )
))
(declare-datatypes ((ValueCell!2326 0))(
  ( (ValueCellFull!2326 (v!4680 V!6765)) (EmptyCell!2326) )
))
(declare-datatypes ((array!9880 0))(
  ( (array!9881 (arr!4690 (Array (_ BitVec 32) ValueCell!2326)) (size!5015 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9880)

(declare-fun mapRest!9077 () (Array (_ BitVec 32) ValueCell!2326))

(declare-fun mapValue!9077 () ValueCell!2326)

(assert (=> mapNonEmpty!9077 (= (arr!4690 _values!649) (store mapRest!9077 mapKey!9077 mapValue!9077))))

(declare-fun b!208776 () Bool)

(declare-fun res!101657 () Bool)

(declare-fun e!136118 () Bool)

(assert (=> b!208776 (=> (not res!101657) (not e!136118))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208776 (= res!101657 (validKeyInArray!0 k!843))))

(declare-fun b!208777 () Bool)

(declare-fun res!101660 () Bool)

(assert (=> b!208777 (=> (not res!101660) (not e!136118))))

(declare-datatypes ((array!9882 0))(
  ( (array!9883 (arr!4691 (Array (_ BitVec 32) (_ BitVec 64))) (size!5016 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9882)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208777 (= res!101660 (= (select (arr!4691 _keys!825) i!601) k!843))))

(declare-fun b!208778 () Bool)

(assert (=> b!208778 (= e!136118 false)))

(declare-datatypes ((tuple2!4104 0))(
  ( (tuple2!4105 (_1!2062 (_ BitVec 64)) (_2!2062 V!6765)) )
))
(declare-datatypes ((List!3025 0))(
  ( (Nil!3022) (Cons!3021 (h!3663 tuple2!4104) (t!7964 List!3025)) )
))
(declare-datatypes ((ListLongMap!3031 0))(
  ( (ListLongMap!3032 (toList!1531 List!3025)) )
))
(declare-fun lt!106884 () ListLongMap!3031)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun v!520 () V!6765)

(declare-fun zeroValue!615 () V!6765)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6765)

(declare-fun getCurrentListMapNoExtraKeys!464 (array!9882 array!9880 (_ BitVec 32) (_ BitVec 32) V!6765 V!6765 (_ BitVec 32) Int) ListLongMap!3031)

(assert (=> b!208778 (= lt!106884 (getCurrentListMapNoExtraKeys!464 _keys!825 (array!9881 (store (arr!4690 _values!649) i!601 (ValueCellFull!2326 v!520)) (size!5015 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106885 () ListLongMap!3031)

(assert (=> b!208778 (= lt!106885 (getCurrentListMapNoExtraKeys!464 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208779 () Bool)

(declare-fun res!101662 () Bool)

(assert (=> b!208779 (=> (not res!101662) (not e!136118))))

(assert (=> b!208779 (= res!101662 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5016 _keys!825))))))

(declare-fun b!208780 () Bool)

(declare-fun e!136117 () Bool)

(declare-fun tp_is_empty!5339 () Bool)

(assert (=> b!208780 (= e!136117 tp_is_empty!5339)))

(declare-fun b!208781 () Bool)

(declare-fun res!101658 () Bool)

(assert (=> b!208781 (=> (not res!101658) (not e!136118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9882 (_ BitVec 32)) Bool)

(assert (=> b!208781 (= res!101658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208782 () Bool)

(declare-fun res!101659 () Bool)

(assert (=> b!208782 (=> (not res!101659) (not e!136118))))

(assert (=> b!208782 (= res!101659 (and (= (size!5015 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5016 _keys!825) (size!5015 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208783 () Bool)

(declare-fun e!136120 () Bool)

(assert (=> b!208783 (= e!136120 (and e!136117 mapRes!9077))))

(declare-fun condMapEmpty!9077 () Bool)

(declare-fun mapDefault!9077 () ValueCell!2326)

