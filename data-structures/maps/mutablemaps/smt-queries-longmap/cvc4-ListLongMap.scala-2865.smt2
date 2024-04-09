; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41258 () Bool)

(assert start!41258)

(declare-fun b_free!11093 () Bool)

(declare-fun b_next!11093 () Bool)

(assert (=> start!41258 (= b_free!11093 (not b_next!11093))))

(declare-fun tp!39118 () Bool)

(declare-fun b_and!19431 () Bool)

(assert (=> start!41258 (= tp!39118 b_and!19431)))

(declare-fun b!461442 () Bool)

(declare-fun res!276136 () Bool)

(declare-fun e!269100 () Bool)

(assert (=> b!461442 (=> (not res!276136) (not e!269100))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!461442 (= res!276136 (validMask!0 mask!1025))))

(declare-fun b!461443 () Bool)

(declare-fun res!276143 () Bool)

(declare-fun e!269096 () Bool)

(assert (=> b!461443 (=> (not res!276143) (not e!269096))))

(declare-datatypes ((array!28625 0))(
  ( (array!28626 (arr!13749 (Array (_ BitVec 32) (_ BitVec 64))) (size!14101 (_ BitVec 32))) )
))
(declare-fun lt!209018 () array!28625)

(declare-datatypes ((List!8333 0))(
  ( (Nil!8330) (Cons!8329 (h!9185 (_ BitVec 64)) (t!14283 List!8333)) )
))
(declare-fun arrayNoDuplicates!0 (array!28625 (_ BitVec 32) List!8333) Bool)

(assert (=> b!461443 (= res!276143 (arrayNoDuplicates!0 lt!209018 #b00000000000000000000000000000000 Nil!8330))))

(declare-fun b!461444 () Bool)

(declare-fun e!269103 () Bool)

(declare-fun e!269101 () Bool)

(assert (=> b!461444 (= e!269103 (not e!269101))))

(declare-fun res!276145 () Bool)

(assert (=> b!461444 (=> res!276145 e!269101)))

(declare-fun _keys!709 () array!28625)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!461444 (= res!276145 (validKeyInArray!0 (select (arr!13749 _keys!709) from!863)))))

(declare-datatypes ((V!17679 0))(
  ( (V!17680 (val!6260 Int)) )
))
(declare-fun minValue!515 () V!17679)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5872 0))(
  ( (ValueCellFull!5872 (v!8538 V!17679)) (EmptyCell!5872) )
))
(declare-datatypes ((array!28627 0))(
  ( (array!28628 (arr!13750 (Array (_ BitVec 32) ValueCell!5872)) (size!14102 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28627)

(declare-fun zeroValue!515 () V!17679)

(declare-datatypes ((tuple2!8230 0))(
  ( (tuple2!8231 (_1!4125 (_ BitVec 64)) (_2!4125 V!17679)) )
))
(declare-fun lt!209020 () tuple2!8230)

(declare-fun lt!209022 () array!28627)

(declare-datatypes ((List!8334 0))(
  ( (Nil!8331) (Cons!8330 (h!9186 tuple2!8230) (t!14284 List!8334)) )
))
(declare-datatypes ((ListLongMap!7157 0))(
  ( (ListLongMap!7158 (toList!3594 List!8334)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1762 (array!28625 array!28627 (_ BitVec 32) (_ BitVec 32) V!17679 V!17679 (_ BitVec 32) Int) ListLongMap!7157)

(declare-fun +!1610 (ListLongMap!7157 tuple2!8230) ListLongMap!7157)

(assert (=> b!461444 (= (getCurrentListMapNoExtraKeys!1762 lt!209018 lt!209022 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1610 (getCurrentListMapNoExtraKeys!1762 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!209020))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!17679)

(assert (=> b!461444 (= lt!209020 (tuple2!8231 k!794 v!412))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13383 0))(
  ( (Unit!13384) )
))
(declare-fun lt!209021 () Unit!13383)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!762 (array!28625 array!28627 (_ BitVec 32) (_ BitVec 32) V!17679 V!17679 (_ BitVec 32) (_ BitVec 64) V!17679 (_ BitVec 32) Int) Unit!13383)

(assert (=> b!461444 (= lt!209021 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!762 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!461445 () Bool)

(declare-fun e!269099 () Bool)

(declare-fun e!269097 () Bool)

(declare-fun mapRes!20299 () Bool)

(assert (=> b!461445 (= e!269099 (and e!269097 mapRes!20299))))

(declare-fun condMapEmpty!20299 () Bool)

(declare-fun mapDefault!20299 () ValueCell!5872)

