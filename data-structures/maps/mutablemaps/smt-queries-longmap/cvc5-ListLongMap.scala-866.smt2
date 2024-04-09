; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20304 () Bool)

(assert start!20304)

(declare-fun b_free!4951 () Bool)

(declare-fun b_next!4951 () Bool)

(assert (=> start!20304 (= b_free!4951 (not b_next!4951))))

(declare-fun tp!17885 () Bool)

(declare-fun b_and!11715 () Bool)

(assert (=> start!20304 (= tp!17885 b_and!11715)))

(declare-fun b!199770 () Bool)

(declare-fun res!95047 () Bool)

(declare-fun e!131095 () Bool)

(assert (=> b!199770 (=> (not res!95047) (not e!131095))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199770 (= res!95047 (validKeyInArray!0 k!843))))

(declare-fun b!199771 () Bool)

(declare-fun e!131091 () Bool)

(declare-fun tp_is_empty!4807 () Bool)

(assert (=> b!199771 (= e!131091 tp_is_empty!4807)))

(declare-fun b!199772 () Bool)

(declare-fun res!95050 () Bool)

(assert (=> b!199772 (=> (not res!95050) (not e!131095))))

(declare-datatypes ((array!8850 0))(
  ( (array!8851 (arr!4175 (Array (_ BitVec 32) (_ BitVec 64))) (size!4500 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8850)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8850 (_ BitVec 32)) Bool)

(assert (=> b!199772 (= res!95050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199773 () Bool)

(declare-fun res!95045 () Bool)

(assert (=> b!199773 (=> (not res!95045) (not e!131095))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6057 0))(
  ( (V!6058 (val!2448 Int)) )
))
(declare-datatypes ((ValueCell!2060 0))(
  ( (ValueCellFull!2060 (v!4414 V!6057)) (EmptyCell!2060) )
))
(declare-datatypes ((array!8852 0))(
  ( (array!8853 (arr!4176 (Array (_ BitVec 32) ValueCell!2060)) (size!4501 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8852)

(assert (=> b!199773 (= res!95045 (and (= (size!4501 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4500 _keys!825) (size!4501 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!95044 () Bool)

(assert (=> start!20304 (=> (not res!95044) (not e!131095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20304 (= res!95044 (validMask!0 mask!1149))))

(assert (=> start!20304 e!131095))

(declare-fun e!131093 () Bool)

(declare-fun array_inv!2735 (array!8852) Bool)

(assert (=> start!20304 (and (array_inv!2735 _values!649) e!131093)))

(assert (=> start!20304 true))

(assert (=> start!20304 tp_is_empty!4807))

(declare-fun array_inv!2736 (array!8850) Bool)

(assert (=> start!20304 (array_inv!2736 _keys!825)))

(assert (=> start!20304 tp!17885))

(declare-fun b!199774 () Bool)

(assert (=> b!199774 (= e!131095 (not true))))

(declare-fun lt!98564 () array!8852)

(declare-datatypes ((tuple2!3696 0))(
  ( (tuple2!3697 (_1!1858 (_ BitVec 64)) (_2!1858 V!6057)) )
))
(declare-datatypes ((List!2637 0))(
  ( (Nil!2634) (Cons!2633 (h!3275 tuple2!3696) (t!7576 List!2637)) )
))
(declare-datatypes ((ListLongMap!2623 0))(
  ( (ListLongMap!2624 (toList!1327 List!2637)) )
))
(declare-fun lt!98565 () ListLongMap!2623)

(declare-fun zeroValue!615 () V!6057)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6057)

(declare-fun getCurrentListMap!913 (array!8850 array!8852 (_ BitVec 32) (_ BitVec 32) V!6057 V!6057 (_ BitVec 32) Int) ListLongMap!2623)

(assert (=> b!199774 (= lt!98565 (getCurrentListMap!913 _keys!825 lt!98564 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98568 () ListLongMap!2623)

(declare-fun lt!98566 () ListLongMap!2623)

(assert (=> b!199774 (and (= lt!98568 lt!98566) (= lt!98566 lt!98568))))

(declare-fun v!520 () V!6057)

(declare-fun lt!98567 () ListLongMap!2623)

(declare-fun +!344 (ListLongMap!2623 tuple2!3696) ListLongMap!2623)

(assert (=> b!199774 (= lt!98566 (+!344 lt!98567 (tuple2!3697 k!843 v!520)))))

(declare-datatypes ((Unit!5997 0))(
  ( (Unit!5998) )
))
(declare-fun lt!98569 () Unit!5997)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!26 (array!8850 array!8852 (_ BitVec 32) (_ BitVec 32) V!6057 V!6057 (_ BitVec 32) (_ BitVec 64) V!6057 (_ BitVec 32) Int) Unit!5997)

(assert (=> b!199774 (= lt!98569 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!26 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!284 (array!8850 array!8852 (_ BitVec 32) (_ BitVec 32) V!6057 V!6057 (_ BitVec 32) Int) ListLongMap!2623)

(assert (=> b!199774 (= lt!98568 (getCurrentListMapNoExtraKeys!284 _keys!825 lt!98564 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199774 (= lt!98564 (array!8853 (store (arr!4176 _values!649) i!601 (ValueCellFull!2060 v!520)) (size!4501 _values!649)))))

(assert (=> b!199774 (= lt!98567 (getCurrentListMapNoExtraKeys!284 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199775 () Bool)

(declare-fun res!95048 () Bool)

(assert (=> b!199775 (=> (not res!95048) (not e!131095))))

(assert (=> b!199775 (= res!95048 (= (select (arr!4175 _keys!825) i!601) k!843))))

(declare-fun b!199776 () Bool)

(declare-fun e!131094 () Bool)

(assert (=> b!199776 (= e!131094 tp_is_empty!4807)))

(declare-fun b!199777 () Bool)

(declare-fun mapRes!8279 () Bool)

(assert (=> b!199777 (= e!131093 (and e!131094 mapRes!8279))))

(declare-fun condMapEmpty!8279 () Bool)

(declare-fun mapDefault!8279 () ValueCell!2060)

