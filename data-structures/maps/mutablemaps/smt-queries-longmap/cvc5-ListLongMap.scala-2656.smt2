; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39762 () Bool)

(assert start!39762)

(declare-fun b_free!10021 () Bool)

(declare-fun b_next!10021 () Bool)

(assert (=> start!39762 (= b_free!10021 (not b_next!10021))))

(declare-fun tp!35591 () Bool)

(declare-fun b_and!17719 () Bool)

(assert (=> start!39762 (= tp!35591 b_and!17719)))

(declare-fun b!427795 () Bool)

(declare-fun e!253591 () Bool)

(assert (=> b!427795 (= e!253591 true)))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((V!16003 0))(
  ( (V!16004 (val!5631 Int)) )
))
(declare-datatypes ((tuple2!7344 0))(
  ( (tuple2!7345 (_1!3682 (_ BitVec 64)) (_2!3682 V!16003)) )
))
(declare-datatypes ((List!7394 0))(
  ( (Nil!7391) (Cons!7390 (h!8246 tuple2!7344) (t!12872 List!7394)) )
))
(declare-datatypes ((ListLongMap!6271 0))(
  ( (ListLongMap!6272 (toList!3151 List!7394)) )
))
(declare-fun lt!195502 () ListLongMap!6271)

(declare-datatypes ((ValueCell!5243 0))(
  ( (ValueCellFull!5243 (v!7874 V!16003)) (EmptyCell!5243) )
))
(declare-datatypes ((array!26165 0))(
  ( (array!26166 (arr!12529 (Array (_ BitVec 32) ValueCell!5243)) (size!12881 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26165)

(declare-datatypes ((array!26167 0))(
  ( (array!26168 (arr!12530 (Array (_ BitVec 32) (_ BitVec 64))) (size!12882 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26167)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!195501 () ListLongMap!6271)

(declare-fun +!1304 (ListLongMap!6271 tuple2!7344) ListLongMap!6271)

(declare-fun get!6212 (ValueCell!5243 V!16003) V!16003)

(declare-fun dynLambda!751 (Int (_ BitVec 64)) V!16003)

(assert (=> b!427795 (= lt!195502 (+!1304 lt!195501 (tuple2!7345 (select (arr!12530 _keys!709) from!863) (get!6212 (select (arr!12529 _values!549) from!863) (dynLambda!751 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!427796 () Bool)

(declare-fun res!251109 () Bool)

(declare-fun e!253587 () Bool)

(assert (=> b!427796 (=> (not res!251109) (not e!253587))))

(declare-datatypes ((List!7395 0))(
  ( (Nil!7392) (Cons!7391 (h!8247 (_ BitVec 64)) (t!12873 List!7395)) )
))
(declare-fun arrayNoDuplicates!0 (array!26167 (_ BitVec 32) List!7395) Bool)

(assert (=> b!427796 (= res!251109 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7392))))

(declare-fun b!427797 () Bool)

(declare-fun e!253588 () Bool)

(declare-fun e!253594 () Bool)

(assert (=> b!427797 (= e!253588 e!253594)))

(declare-fun res!251102 () Bool)

(assert (=> b!427797 (=> (not res!251102) (not e!253594))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427797 (= res!251102 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16003)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16003)

(declare-fun lt!195507 () array!26167)

(declare-fun lt!195504 () array!26165)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1351 (array!26167 array!26165 (_ BitVec 32) (_ BitVec 32) V!16003 V!16003 (_ BitVec 32) Int) ListLongMap!6271)

(assert (=> b!427797 (= lt!195502 (getCurrentListMapNoExtraKeys!1351 lt!195507 lt!195504 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16003)

(assert (=> b!427797 (= lt!195504 (array!26166 (store (arr!12529 _values!549) i!563 (ValueCellFull!5243 v!412)) (size!12881 _values!549)))))

(declare-fun lt!195503 () ListLongMap!6271)

(assert (=> b!427797 (= lt!195503 (getCurrentListMapNoExtraKeys!1351 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!427798 () Bool)

(declare-fun res!251107 () Bool)

(assert (=> b!427798 (=> (not res!251107) (not e!253587))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427798 (= res!251107 (validKeyInArray!0 k!794))))

(declare-fun b!427799 () Bool)

(declare-fun e!253590 () Bool)

(declare-fun tp_is_empty!11173 () Bool)

(assert (=> b!427799 (= e!253590 tp_is_empty!11173)))

(declare-fun b!427800 () Bool)

(declare-fun res!251110 () Bool)

(assert (=> b!427800 (=> (not res!251110) (not e!253588))))

(assert (=> b!427800 (= res!251110 (arrayNoDuplicates!0 lt!195507 #b00000000000000000000000000000000 Nil!7392))))

(declare-fun b!427801 () Bool)

(declare-fun e!253589 () Bool)

(assert (=> b!427801 (= e!253589 tp_is_empty!11173)))

(declare-fun res!251108 () Bool)

(assert (=> start!39762 (=> (not res!251108) (not e!253587))))

(assert (=> start!39762 (= res!251108 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12882 _keys!709))))))

(assert (=> start!39762 e!253587))

(assert (=> start!39762 tp_is_empty!11173))

(assert (=> start!39762 tp!35591))

(assert (=> start!39762 true))

(declare-fun e!253592 () Bool)

(declare-fun array_inv!9118 (array!26165) Bool)

(assert (=> start!39762 (and (array_inv!9118 _values!549) e!253592)))

(declare-fun array_inv!9119 (array!26167) Bool)

(assert (=> start!39762 (array_inv!9119 _keys!709)))

(declare-fun b!427802 () Bool)

(declare-fun res!251115 () Bool)

(assert (=> b!427802 (=> (not res!251115) (not e!253587))))

(assert (=> b!427802 (= res!251115 (or (= (select (arr!12530 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12530 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!427803 () Bool)

(assert (=> b!427803 (= e!253594 (not e!253591))))

(declare-fun res!251105 () Bool)

(assert (=> b!427803 (=> res!251105 e!253591)))

(assert (=> b!427803 (= res!251105 (not (validKeyInArray!0 (select (arr!12530 _keys!709) from!863))))))

(declare-fun lt!195500 () ListLongMap!6271)

(assert (=> b!427803 (= lt!195500 lt!195501)))

(declare-fun lt!195506 () ListLongMap!6271)

(assert (=> b!427803 (= lt!195501 (+!1304 lt!195506 (tuple2!7345 k!794 v!412)))))

(assert (=> b!427803 (= lt!195500 (getCurrentListMapNoExtraKeys!1351 lt!195507 lt!195504 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!427803 (= lt!195506 (getCurrentListMapNoExtraKeys!1351 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12509 0))(
  ( (Unit!12510) )
))
(declare-fun lt!195505 () Unit!12509)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!505 (array!26167 array!26165 (_ BitVec 32) (_ BitVec 32) V!16003 V!16003 (_ BitVec 32) (_ BitVec 64) V!16003 (_ BitVec 32) Int) Unit!12509)

(assert (=> b!427803 (= lt!195505 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!505 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!427804 () Bool)

(assert (=> b!427804 (= e!253587 e!253588)))

(declare-fun res!251112 () Bool)

(assert (=> b!427804 (=> (not res!251112) (not e!253588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26167 (_ BitVec 32)) Bool)

(assert (=> b!427804 (= res!251112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195507 mask!1025))))

(assert (=> b!427804 (= lt!195507 (array!26168 (store (arr!12530 _keys!709) i!563 k!794) (size!12882 _keys!709)))))

(declare-fun b!427805 () Bool)

(declare-fun res!251113 () Bool)

(assert (=> b!427805 (=> (not res!251113) (not e!253588))))

(assert (=> b!427805 (= res!251113 (bvsle from!863 i!563))))

(declare-fun b!427806 () Bool)

(declare-fun res!251114 () Bool)

(assert (=> b!427806 (=> (not res!251114) (not e!253587))))

(assert (=> b!427806 (= res!251114 (and (= (size!12881 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12882 _keys!709) (size!12881 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!427807 () Bool)

(declare-fun mapRes!18381 () Bool)

(assert (=> b!427807 (= e!253592 (and e!253590 mapRes!18381))))

(declare-fun condMapEmpty!18381 () Bool)

(declare-fun mapDefault!18381 () ValueCell!5243)

