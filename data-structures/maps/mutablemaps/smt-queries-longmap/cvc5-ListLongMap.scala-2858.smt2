; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41186 () Bool)

(assert start!41186)

(declare-fun b_free!11047 () Bool)

(declare-fun b_next!11047 () Bool)

(assert (=> start!41186 (= b_free!11047 (not b_next!11047))))

(declare-fun tp!38976 () Bool)

(declare-fun b_and!19351 () Bool)

(assert (=> start!41186 (= tp!38976 b_and!19351)))

(declare-fun b!460052 () Bool)

(declare-datatypes ((Unit!13337 0))(
  ( (Unit!13338) )
))
(declare-fun e!268428 () Unit!13337)

(declare-fun Unit!13339 () Unit!13337)

(assert (=> b!460052 (= e!268428 Unit!13339)))

(declare-fun lt!208325 () Unit!13337)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!28531 0))(
  ( (array!28532 (arr!13703 (Array (_ BitVec 32) (_ BitVec 64))) (size!14055 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28531)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28531 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13337)

(assert (=> b!460052 (= lt!208325 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!460052 false))

(declare-fun b!460053 () Bool)

(declare-fun res!275107 () Bool)

(declare-fun e!268427 () Bool)

(assert (=> b!460053 (=> (not res!275107) (not e!268427))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!460053 (= res!275107 (bvsle from!863 i!563))))

(declare-fun b!460054 () Bool)

(declare-fun e!268430 () Bool)

(declare-fun tp_is_empty!12385 () Bool)

(assert (=> b!460054 (= e!268430 tp_is_empty!12385)))

(declare-fun b!460055 () Bool)

(declare-fun res!275110 () Bool)

(declare-fun e!268429 () Bool)

(assert (=> b!460055 (=> (not res!275110) (not e!268429))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17619 0))(
  ( (V!17620 (val!6237 Int)) )
))
(declare-datatypes ((ValueCell!5849 0))(
  ( (ValueCellFull!5849 (v!8511 V!17619)) (EmptyCell!5849) )
))
(declare-datatypes ((array!28533 0))(
  ( (array!28534 (arr!13704 (Array (_ BitVec 32) ValueCell!5849)) (size!14056 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28533)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!460055 (= res!275110 (and (= (size!14056 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14055 _keys!709) (size!14056 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!460056 () Bool)

(declare-fun e!268424 () Bool)

(assert (=> b!460056 (= e!268424 true)))

(declare-datatypes ((tuple2!8190 0))(
  ( (tuple2!8191 (_1!4105 (_ BitVec 64)) (_2!4105 V!17619)) )
))
(declare-datatypes ((List!8293 0))(
  ( (Nil!8290) (Cons!8289 (h!9145 tuple2!8190) (t!14227 List!8293)) )
))
(declare-datatypes ((ListLongMap!7117 0))(
  ( (ListLongMap!7118 (toList!3574 List!8293)) )
))
(declare-fun lt!208332 () ListLongMap!7117)

(declare-fun lt!208336 () tuple2!8190)

(declare-fun lt!208335 () ListLongMap!7117)

(declare-fun lt!208330 () tuple2!8190)

(declare-fun +!1593 (ListLongMap!7117 tuple2!8190) ListLongMap!7117)

(assert (=> b!460056 (= lt!208335 (+!1593 (+!1593 lt!208332 lt!208336) lt!208330))))

(declare-fun lt!208324 () V!17619)

(declare-fun lt!208326 () Unit!13337)

(declare-fun v!412 () V!17619)

(declare-fun addCommutativeForDiffKeys!419 (ListLongMap!7117 (_ BitVec 64) V!17619 (_ BitVec 64) V!17619) Unit!13337)

(assert (=> b!460056 (= lt!208326 (addCommutativeForDiffKeys!419 lt!208332 k!794 v!412 (select (arr!13703 _keys!709) from!863) lt!208324))))

(declare-fun b!460057 () Bool)

(declare-fun e!268431 () Bool)

(declare-fun e!268432 () Bool)

(assert (=> b!460057 (= e!268431 (not e!268432))))

(declare-fun res!275114 () Bool)

(assert (=> b!460057 (=> res!275114 e!268432)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!460057 (= res!275114 (not (validKeyInArray!0 (select (arr!13703 _keys!709) from!863))))))

(declare-fun lt!208331 () ListLongMap!7117)

(declare-fun lt!208328 () ListLongMap!7117)

(assert (=> b!460057 (= lt!208331 lt!208328)))

(assert (=> b!460057 (= lt!208328 (+!1593 lt!208332 lt!208330))))

(declare-fun minValue!515 () V!17619)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!208333 () array!28531)

(declare-fun lt!208329 () array!28533)

(declare-fun zeroValue!515 () V!17619)

(declare-fun getCurrentListMapNoExtraKeys!1744 (array!28531 array!28533 (_ BitVec 32) (_ BitVec 32) V!17619 V!17619 (_ BitVec 32) Int) ListLongMap!7117)

(assert (=> b!460057 (= lt!208331 (getCurrentListMapNoExtraKeys!1744 lt!208333 lt!208329 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!460057 (= lt!208330 (tuple2!8191 k!794 v!412))))

(assert (=> b!460057 (= lt!208332 (getCurrentListMapNoExtraKeys!1744 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!208327 () Unit!13337)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!747 (array!28531 array!28533 (_ BitVec 32) (_ BitVec 32) V!17619 V!17619 (_ BitVec 32) (_ BitVec 64) V!17619 (_ BitVec 32) Int) Unit!13337)

(assert (=> b!460057 (= lt!208327 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!747 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!460058 () Bool)

(declare-fun res!275103 () Bool)

(assert (=> b!460058 (=> (not res!275103) (not e!268429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!460058 (= res!275103 (validMask!0 mask!1025))))

(declare-fun b!460059 () Bool)

(declare-fun res!275111 () Bool)

(assert (=> b!460059 (=> (not res!275111) (not e!268429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28531 (_ BitVec 32)) Bool)

(assert (=> b!460059 (= res!275111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!460060 () Bool)

(declare-fun e!268425 () Bool)

(declare-fun e!268426 () Bool)

(declare-fun mapRes!20227 () Bool)

(assert (=> b!460060 (= e!268425 (and e!268426 mapRes!20227))))

(declare-fun condMapEmpty!20227 () Bool)

(declare-fun mapDefault!20227 () ValueCell!5849)

