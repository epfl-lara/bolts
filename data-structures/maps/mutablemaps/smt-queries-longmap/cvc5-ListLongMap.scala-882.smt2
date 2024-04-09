; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20400 () Bool)

(assert start!20400)

(declare-fun b_free!5047 () Bool)

(declare-fun b_next!5047 () Bool)

(assert (=> start!20400 (= b_free!5047 (not b_next!5047))))

(declare-fun tp!18173 () Bool)

(declare-fun b_and!11811 () Bool)

(assert (=> start!20400 (= tp!18173 b_and!11811)))

(declare-fun b!201430 () Bool)

(declare-fun res!96279 () Bool)

(declare-fun e!132022 () Bool)

(assert (=> b!201430 (=> (not res!96279) (not e!132022))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201430 (= res!96279 (validKeyInArray!0 k!843))))

(declare-fun b!201431 () Bool)

(declare-fun e!132027 () Bool)

(declare-fun tp_is_empty!4903 () Bool)

(assert (=> b!201431 (= e!132027 tp_is_empty!4903)))

(declare-fun res!96277 () Bool)

(assert (=> start!20400 (=> (not res!96277) (not e!132022))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20400 (= res!96277 (validMask!0 mask!1149))))

(assert (=> start!20400 e!132022))

(declare-datatypes ((V!6185 0))(
  ( (V!6186 (val!2496 Int)) )
))
(declare-datatypes ((ValueCell!2108 0))(
  ( (ValueCellFull!2108 (v!4462 V!6185)) (EmptyCell!2108) )
))
(declare-datatypes ((array!9034 0))(
  ( (array!9035 (arr!4267 (Array (_ BitVec 32) ValueCell!2108)) (size!4592 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9034)

(declare-fun e!132024 () Bool)

(declare-fun array_inv!2805 (array!9034) Bool)

(assert (=> start!20400 (and (array_inv!2805 _values!649) e!132024)))

(assert (=> start!20400 true))

(assert (=> start!20400 tp_is_empty!4903))

(declare-datatypes ((array!9036 0))(
  ( (array!9037 (arr!4268 (Array (_ BitVec 32) (_ BitVec 64))) (size!4593 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9036)

(declare-fun array_inv!2806 (array!9036) Bool)

(assert (=> start!20400 (array_inv!2806 _keys!825)))

(assert (=> start!20400 tp!18173))

(declare-fun b!201432 () Bool)

(declare-fun res!96272 () Bool)

(assert (=> b!201432 (=> (not res!96272) (not e!132022))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!201432 (= res!96272 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4593 _keys!825))))))

(declare-fun b!201433 () Bool)

(declare-fun res!96276 () Bool)

(assert (=> b!201433 (=> (not res!96276) (not e!132022))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201433 (= res!96276 (and (= (size!4592 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4593 _keys!825) (size!4592 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201434 () Bool)

(declare-fun e!132023 () Bool)

(assert (=> b!201434 (= e!132023 tp_is_empty!4903)))

(declare-fun b!201435 () Bool)

(declare-fun res!96275 () Bool)

(assert (=> b!201435 (=> (not res!96275) (not e!132022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9036 (_ BitVec 32)) Bool)

(assert (=> b!201435 (= res!96275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8423 () Bool)

(declare-fun mapRes!8423 () Bool)

(assert (=> mapIsEmpty!8423 mapRes!8423))

(declare-fun b!201436 () Bool)

(declare-fun e!132026 () Bool)

(declare-fun e!132025 () Bool)

(assert (=> b!201436 (= e!132026 e!132025)))

(declare-fun res!96274 () Bool)

(assert (=> b!201436 (=> res!96274 e!132025)))

(assert (=> b!201436 (= res!96274 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3774 0))(
  ( (tuple2!3775 (_1!1897 (_ BitVec 64)) (_2!1897 V!6185)) )
))
(declare-datatypes ((List!2711 0))(
  ( (Nil!2708) (Cons!2707 (h!3349 tuple2!3774) (t!7650 List!2711)) )
))
(declare-datatypes ((ListLongMap!2701 0))(
  ( (ListLongMap!2702 (toList!1366 List!2711)) )
))
(declare-fun lt!100438 () ListLongMap!2701)

(declare-fun lt!100440 () ListLongMap!2701)

(assert (=> b!201436 (= lt!100438 lt!100440)))

(declare-fun lt!100443 () ListLongMap!2701)

(declare-fun lt!100452 () tuple2!3774)

(declare-fun +!383 (ListLongMap!2701 tuple2!3774) ListLongMap!2701)

(assert (=> b!201436 (= lt!100440 (+!383 lt!100443 lt!100452))))

(declare-fun v!520 () V!6185)

(declare-fun zeroValue!615 () V!6185)

(declare-datatypes ((Unit!6073 0))(
  ( (Unit!6074) )
))
(declare-fun lt!100446 () Unit!6073)

(declare-fun lt!100445 () ListLongMap!2701)

(declare-fun addCommutativeForDiffKeys!104 (ListLongMap!2701 (_ BitVec 64) V!6185 (_ BitVec 64) V!6185) Unit!6073)

(assert (=> b!201436 (= lt!100446 (addCommutativeForDiffKeys!104 lt!100445 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!100450 () ListLongMap!2701)

(declare-fun lt!100448 () tuple2!3774)

(assert (=> b!201436 (= lt!100450 (+!383 lt!100438 lt!100448))))

(declare-fun lt!100442 () ListLongMap!2701)

(declare-fun lt!100449 () tuple2!3774)

(assert (=> b!201436 (= lt!100438 (+!383 lt!100442 lt!100449))))

(declare-fun lt!100441 () ListLongMap!2701)

(declare-fun lt!100439 () ListLongMap!2701)

(assert (=> b!201436 (= lt!100441 lt!100439)))

(assert (=> b!201436 (= lt!100439 (+!383 lt!100443 lt!100448))))

(assert (=> b!201436 (= lt!100443 (+!383 lt!100445 lt!100449))))

(declare-fun lt!100447 () ListLongMap!2701)

(assert (=> b!201436 (= lt!100450 (+!383 (+!383 lt!100447 lt!100449) lt!100448))))

(declare-fun minValue!615 () V!6185)

(assert (=> b!201436 (= lt!100448 (tuple2!3775 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201436 (= lt!100449 (tuple2!3775 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201437 () Bool)

(assert (=> b!201437 (= e!132024 (and e!132023 mapRes!8423))))

(declare-fun condMapEmpty!8423 () Bool)

(declare-fun mapDefault!8423 () ValueCell!2108)

