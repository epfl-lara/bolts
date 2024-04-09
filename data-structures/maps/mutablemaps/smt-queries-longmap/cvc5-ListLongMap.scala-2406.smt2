; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38084 () Bool)

(assert start!38084)

(declare-fun b_free!9001 () Bool)

(declare-fun b_next!9001 () Bool)

(assert (=> start!38084 (= b_free!9001 (not b_next!9001))))

(declare-fun tp!31779 () Bool)

(declare-fun b_and!16357 () Bool)

(assert (=> start!38084 (= tp!31779 b_and!16357)))

(declare-fun b!391927 () Bool)

(declare-fun res!224478 () Bool)

(declare-fun e!237368 () Bool)

(assert (=> b!391927 (=> (not res!224478) (not e!237368))))

(declare-datatypes ((array!23223 0))(
  ( (array!23224 (arr!11069 (Array (_ BitVec 32) (_ BitVec 64))) (size!11421 (_ BitVec 32))) )
))
(declare-fun lt!185193 () array!23223)

(declare-datatypes ((List!6397 0))(
  ( (Nil!6394) (Cons!6393 (h!7249 (_ BitVec 64)) (t!11571 List!6397)) )
))
(declare-fun arrayNoDuplicates!0 (array!23223 (_ BitVec 32) List!6397) Bool)

(assert (=> b!391927 (= res!224478 (arrayNoDuplicates!0 lt!185193 #b00000000000000000000000000000000 Nil!6394))))

(declare-fun mapNonEmpty!16098 () Bool)

(declare-fun mapRes!16098 () Bool)

(declare-fun tp!31778 () Bool)

(declare-fun e!237364 () Bool)

(assert (=> mapNonEmpty!16098 (= mapRes!16098 (and tp!31778 e!237364))))

(declare-datatypes ((V!14003 0))(
  ( (V!14004 (val!4881 Int)) )
))
(declare-datatypes ((ValueCell!4493 0))(
  ( (ValueCellFull!4493 (v!7106 V!14003)) (EmptyCell!4493) )
))
(declare-fun mapRest!16098 () (Array (_ BitVec 32) ValueCell!4493))

(declare-fun mapKey!16098 () (_ BitVec 32))

(declare-datatypes ((array!23225 0))(
  ( (array!23226 (arr!11070 (Array (_ BitVec 32) ValueCell!4493)) (size!11422 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23225)

(declare-fun mapValue!16098 () ValueCell!4493)

(assert (=> mapNonEmpty!16098 (= (arr!11070 _values!506) (store mapRest!16098 mapKey!16098 mapValue!16098))))

(declare-fun b!391928 () Bool)

(declare-fun res!224476 () Bool)

(declare-fun e!237367 () Bool)

(assert (=> b!391928 (=> (not res!224476) (not e!237367))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!391928 (= res!224476 (validKeyInArray!0 k!778))))

(declare-fun b!391930 () Bool)

(declare-fun tp_is_empty!9673 () Bool)

(assert (=> b!391930 (= e!237364 tp_is_empty!9673)))

(declare-fun b!391931 () Bool)

(declare-fun res!224477 () Bool)

(assert (=> b!391931 (=> (not res!224477) (not e!237367))))

(declare-fun _keys!658 () array!23223)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23223 (_ BitVec 32)) Bool)

(assert (=> b!391931 (= res!224477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!391932 () Bool)

(declare-fun e!237362 () Bool)

(declare-fun e!237365 () Bool)

(assert (=> b!391932 (= e!237362 (and e!237365 mapRes!16098))))

(declare-fun condMapEmpty!16098 () Bool)

(declare-fun mapDefault!16098 () ValueCell!4493)

