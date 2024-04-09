; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39948 () Bool)

(assert start!39948)

(declare-fun b_free!10207 () Bool)

(declare-fun b_next!10207 () Bool)

(assert (=> start!39948 (= b_free!10207 (not b_next!10207))))

(declare-fun tp!36150 () Bool)

(declare-fun b_and!18091 () Bool)

(assert (=> start!39948 (= tp!36150 b_and!18091)))

(declare-fun b!433423 () Bool)

(declare-fun res!255188 () Bool)

(declare-fun e!256260 () Bool)

(assert (=> b!433423 (=> (not res!255188) (not e!256260))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433423 (= res!255188 (bvsle from!863 i!563))))

(declare-fun b!433424 () Bool)

(declare-fun e!256257 () Bool)

(declare-fun tp_is_empty!11359 () Bool)

(assert (=> b!433424 (= e!256257 tp_is_empty!11359)))

(declare-fun b!433425 () Bool)

(declare-fun e!256264 () Bool)

(assert (=> b!433425 (= e!256264 tp_is_empty!11359)))

(declare-fun b!433426 () Bool)

(declare-fun res!255181 () Bool)

(declare-fun e!256259 () Bool)

(assert (=> b!433426 (=> (not res!255181) (not e!256259))))

(declare-datatypes ((array!26527 0))(
  ( (array!26528 (arr!12710 (Array (_ BitVec 32) (_ BitVec 64))) (size!13062 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26527)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!433426 (= res!255181 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!433427 () Bool)

(declare-fun e!256256 () Bool)

(declare-fun e!256255 () Bool)

(assert (=> b!433427 (= e!256256 (not e!256255))))

(declare-fun res!255189 () Bool)

(assert (=> b!433427 (=> res!255189 e!256255)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433427 (= res!255189 (not (validKeyInArray!0 (select (arr!12710 _keys!709) from!863))))))

(declare-datatypes ((V!16251 0))(
  ( (V!16252 (val!5724 Int)) )
))
(declare-datatypes ((tuple2!7498 0))(
  ( (tuple2!7499 (_1!3759 (_ BitVec 64)) (_2!3759 V!16251)) )
))
(declare-datatypes ((List!7548 0))(
  ( (Nil!7545) (Cons!7544 (h!8400 tuple2!7498) (t!13212 List!7548)) )
))
(declare-datatypes ((ListLongMap!6425 0))(
  ( (ListLongMap!6426 (toList!3228 List!7548)) )
))
(declare-fun lt!199125 () ListLongMap!6425)

(declare-fun lt!199129 () ListLongMap!6425)

(assert (=> b!433427 (= lt!199125 lt!199129)))

(declare-fun lt!199131 () ListLongMap!6425)

(declare-fun lt!199124 () tuple2!7498)

(declare-fun +!1374 (ListLongMap!6425 tuple2!7498) ListLongMap!6425)

(assert (=> b!433427 (= lt!199129 (+!1374 lt!199131 lt!199124))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16251)

(declare-datatypes ((ValueCell!5336 0))(
  ( (ValueCellFull!5336 (v!7967 V!16251)) (EmptyCell!5336) )
))
(declare-datatypes ((array!26529 0))(
  ( (array!26530 (arr!12711 (Array (_ BitVec 32) ValueCell!5336)) (size!13063 (_ BitVec 32))) )
))
(declare-fun lt!199127 () array!26529)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!16251)

(declare-fun lt!199137 () array!26527)

(declare-fun getCurrentListMapNoExtraKeys!1417 (array!26527 array!26529 (_ BitVec 32) (_ BitVec 32) V!16251 V!16251 (_ BitVec 32) Int) ListLongMap!6425)

(assert (=> b!433427 (= lt!199125 (getCurrentListMapNoExtraKeys!1417 lt!199137 lt!199127 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16251)

(assert (=> b!433427 (= lt!199124 (tuple2!7499 k!794 v!412))))

(declare-fun _values!549 () array!26529)

(assert (=> b!433427 (= lt!199131 (getCurrentListMapNoExtraKeys!1417 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12791 0))(
  ( (Unit!12792) )
))
(declare-fun lt!199130 () Unit!12791)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!561 (array!26527 array!26529 (_ BitVec 32) (_ BitVec 32) V!16251 V!16251 (_ BitVec 32) (_ BitVec 64) V!16251 (_ BitVec 32) Int) Unit!12791)

(assert (=> b!433427 (= lt!199130 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!561 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!255191 () Bool)

(assert (=> start!39948 (=> (not res!255191) (not e!256259))))

(assert (=> start!39948 (= res!255191 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13062 _keys!709))))))

(assert (=> start!39948 e!256259))

(assert (=> start!39948 tp_is_empty!11359))

(assert (=> start!39948 tp!36150))

(assert (=> start!39948 true))

(declare-fun e!256263 () Bool)

(declare-fun array_inv!9240 (array!26529) Bool)

(assert (=> start!39948 (and (array_inv!9240 _values!549) e!256263)))

(declare-fun array_inv!9241 (array!26527) Bool)

(assert (=> start!39948 (array_inv!9241 _keys!709)))

(declare-fun b!433428 () Bool)

(declare-fun e!256261 () Bool)

(assert (=> b!433428 (= e!256261 true)))

(declare-fun lt!199128 () tuple2!7498)

(declare-fun lt!199132 () ListLongMap!6425)

(assert (=> b!433428 (= lt!199132 (+!1374 (+!1374 lt!199131 lt!199128) lt!199124))))

(declare-fun lt!199136 () Unit!12791)

(declare-fun lt!199133 () V!16251)

(declare-fun addCommutativeForDiffKeys!384 (ListLongMap!6425 (_ BitVec 64) V!16251 (_ BitVec 64) V!16251) Unit!12791)

(assert (=> b!433428 (= lt!199136 (addCommutativeForDiffKeys!384 lt!199131 k!794 v!412 (select (arr!12710 _keys!709) from!863) lt!199133))))

(declare-fun b!433429 () Bool)

(declare-fun mapRes!18660 () Bool)

(assert (=> b!433429 (= e!256263 (and e!256257 mapRes!18660))))

(declare-fun condMapEmpty!18660 () Bool)

(declare-fun mapDefault!18660 () ValueCell!5336)

