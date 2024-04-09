; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20266 () Bool)

(assert start!20266)

(declare-fun b_free!4913 () Bool)

(declare-fun b_next!4913 () Bool)

(assert (=> start!20266 (= b_free!4913 (not b_next!4913))))

(declare-fun tp!17770 () Bool)

(declare-fun b_and!11677 () Bool)

(assert (=> start!20266 (= tp!17770 b_and!11677)))

(declare-fun b!199200 () Bool)

(declare-fun res!94651 () Bool)

(declare-fun e!130807 () Bool)

(assert (=> b!199200 (=> (not res!94651) (not e!130807))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8778 0))(
  ( (array!8779 (arr!4139 (Array (_ BitVec 32) (_ BitVec 64))) (size!4464 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8778)

(assert (=> b!199200 (= res!94651 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4464 _keys!825))))))

(declare-fun b!199201 () Bool)

(assert (=> b!199201 (= e!130807 (not true))))

(declare-datatypes ((V!6005 0))(
  ( (V!6006 (val!2429 Int)) )
))
(declare-datatypes ((tuple2!3674 0))(
  ( (tuple2!3675 (_1!1847 (_ BitVec 64)) (_2!1847 V!6005)) )
))
(declare-datatypes ((List!2614 0))(
  ( (Nil!2611) (Cons!2610 (h!3252 tuple2!3674) (t!7553 List!2614)) )
))
(declare-datatypes ((ListLongMap!2601 0))(
  ( (ListLongMap!2602 (toList!1316 List!2614)) )
))
(declare-fun lt!98245 () ListLongMap!2601)

(declare-fun lt!98242 () ListLongMap!2601)

(assert (=> b!199201 (and (= lt!98245 lt!98242) (= lt!98242 lt!98245))))

(declare-fun v!520 () V!6005)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun lt!98243 () ListLongMap!2601)

(declare-fun +!333 (ListLongMap!2601 tuple2!3674) ListLongMap!2601)

(assert (=> b!199201 (= lt!98242 (+!333 lt!98243 (tuple2!3675 k!843 v!520)))))

(declare-datatypes ((Unit!5975 0))(
  ( (Unit!5976) )
))
(declare-fun lt!98244 () Unit!5975)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6005)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6005)

(declare-datatypes ((ValueCell!2041 0))(
  ( (ValueCellFull!2041 (v!4395 V!6005)) (EmptyCell!2041) )
))
(declare-datatypes ((array!8780 0))(
  ( (array!8781 (arr!4140 (Array (_ BitVec 32) ValueCell!2041)) (size!4465 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8780)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!15 (array!8778 array!8780 (_ BitVec 32) (_ BitVec 32) V!6005 V!6005 (_ BitVec 32) (_ BitVec 64) V!6005 (_ BitVec 32) Int) Unit!5975)

(assert (=> b!199201 (= lt!98244 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!15 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!273 (array!8778 array!8780 (_ BitVec 32) (_ BitVec 32) V!6005 V!6005 (_ BitVec 32) Int) ListLongMap!2601)

(assert (=> b!199201 (= lt!98245 (getCurrentListMapNoExtraKeys!273 _keys!825 (array!8781 (store (arr!4140 _values!649) i!601 (ValueCellFull!2041 v!520)) (size!4465 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199201 (= lt!98243 (getCurrentListMapNoExtraKeys!273 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199202 () Bool)

(declare-fun res!94650 () Bool)

(assert (=> b!199202 (=> (not res!94650) (not e!130807))))

(assert (=> b!199202 (= res!94650 (and (= (size!4465 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4464 _keys!825) (size!4465 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!94649 () Bool)

(assert (=> start!20266 (=> (not res!94649) (not e!130807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20266 (= res!94649 (validMask!0 mask!1149))))

(assert (=> start!20266 e!130807))

(declare-fun e!130806 () Bool)

(declare-fun array_inv!2705 (array!8780) Bool)

(assert (=> start!20266 (and (array_inv!2705 _values!649) e!130806)))

(assert (=> start!20266 true))

(declare-fun tp_is_empty!4769 () Bool)

(assert (=> start!20266 tp_is_empty!4769))

(declare-fun array_inv!2706 (array!8778) Bool)

(assert (=> start!20266 (array_inv!2706 _keys!825)))

(assert (=> start!20266 tp!17770))

(declare-fun mapNonEmpty!8222 () Bool)

(declare-fun mapRes!8222 () Bool)

(declare-fun tp!17771 () Bool)

(declare-fun e!130810 () Bool)

(assert (=> mapNonEmpty!8222 (= mapRes!8222 (and tp!17771 e!130810))))

(declare-fun mapValue!8222 () ValueCell!2041)

(declare-fun mapKey!8222 () (_ BitVec 32))

(declare-fun mapRest!8222 () (Array (_ BitVec 32) ValueCell!2041))

(assert (=> mapNonEmpty!8222 (= (arr!4140 _values!649) (store mapRest!8222 mapKey!8222 mapValue!8222))))

(declare-fun b!199203 () Bool)

(declare-fun res!94648 () Bool)

(assert (=> b!199203 (=> (not res!94648) (not e!130807))))

(assert (=> b!199203 (= res!94648 (= (select (arr!4139 _keys!825) i!601) k!843))))

(declare-fun b!199204 () Bool)

(assert (=> b!199204 (= e!130810 tp_is_empty!4769)))

(declare-fun b!199205 () Bool)

(declare-fun e!130808 () Bool)

(assert (=> b!199205 (= e!130808 tp_is_empty!4769)))

(declare-fun b!199206 () Bool)

(declare-fun res!94645 () Bool)

(assert (=> b!199206 (=> (not res!94645) (not e!130807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8778 (_ BitVec 32)) Bool)

(assert (=> b!199206 (= res!94645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199207 () Bool)

(declare-fun res!94647 () Bool)

(assert (=> b!199207 (=> (not res!94647) (not e!130807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199207 (= res!94647 (validKeyInArray!0 k!843))))

(declare-fun b!199208 () Bool)

(declare-fun res!94646 () Bool)

(assert (=> b!199208 (=> (not res!94646) (not e!130807))))

(declare-datatypes ((List!2615 0))(
  ( (Nil!2612) (Cons!2611 (h!3253 (_ BitVec 64)) (t!7554 List!2615)) )
))
(declare-fun arrayNoDuplicates!0 (array!8778 (_ BitVec 32) List!2615) Bool)

(assert (=> b!199208 (= res!94646 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2612))))

(declare-fun mapIsEmpty!8222 () Bool)

(assert (=> mapIsEmpty!8222 mapRes!8222))

(declare-fun b!199209 () Bool)

(assert (=> b!199209 (= e!130806 (and e!130808 mapRes!8222))))

(declare-fun condMapEmpty!8222 () Bool)

(declare-fun mapDefault!8222 () ValueCell!2041)

