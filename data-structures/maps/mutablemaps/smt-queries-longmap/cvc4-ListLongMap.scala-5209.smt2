; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70314 () Bool)

(assert start!70314)

(declare-fun b_free!12665 () Bool)

(declare-fun b_next!12665 () Bool)

(assert (=> start!70314 (= b_free!12665 (not b_next!12665))))

(declare-fun tp!44718 () Bool)

(declare-fun b_and!21483 () Bool)

(assert (=> start!70314 (= tp!44718 b_and!21483)))

(declare-fun mapNonEmpty!23152 () Bool)

(declare-fun mapRes!23152 () Bool)

(declare-fun tp!44719 () Bool)

(declare-fun e!452948 () Bool)

(assert (=> mapNonEmpty!23152 (= mapRes!23152 (and tp!44719 e!452948))))

(declare-datatypes ((V!24167 0))(
  ( (V!24168 (val!7235 Int)) )
))
(declare-datatypes ((ValueCell!6772 0))(
  ( (ValueCellFull!6772 (v!9659 V!24167)) (EmptyCell!6772) )
))
(declare-fun mapRest!23152 () (Array (_ BitVec 32) ValueCell!6772))

(declare-fun mapKey!23152 () (_ BitVec 32))

(declare-datatypes ((array!44930 0))(
  ( (array!44931 (arr!21518 (Array (_ BitVec 32) ValueCell!6772)) (size!21939 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44930)

(declare-fun mapValue!23152 () ValueCell!6772)

(assert (=> mapNonEmpty!23152 (= (arr!21518 _values!788) (store mapRest!23152 mapKey!23152 mapValue!23152))))

(declare-fun b!816449 () Bool)

(declare-fun tp_is_empty!14375 () Bool)

(assert (=> b!816449 (= e!452948 tp_is_empty!14375)))

(declare-fun b!816450 () Bool)

(declare-fun res!557519 () Bool)

(declare-fun e!452951 () Bool)

(assert (=> b!816450 (=> (not res!557519) (not e!452951))))

(declare-datatypes ((array!44932 0))(
  ( (array!44933 (arr!21519 (Array (_ BitVec 32) (_ BitVec 64))) (size!21940 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44932)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44932 (_ BitVec 32)) Bool)

(assert (=> b!816450 (= res!557519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!816451 () Bool)

(declare-fun res!557521 () Bool)

(assert (=> b!816451 (=> (not res!557521) (not e!452951))))

(declare-datatypes ((List!15380 0))(
  ( (Nil!15377) (Cons!15376 (h!16505 (_ BitVec 64)) (t!21711 List!15380)) )
))
(declare-fun arrayNoDuplicates!0 (array!44932 (_ BitVec 32) List!15380) Bool)

(assert (=> b!816451 (= res!557521 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15377))))

(declare-fun b!816452 () Bool)

(declare-fun e!452950 () Bool)

(declare-fun e!452949 () Bool)

(assert (=> b!816452 (= e!452950 (and e!452949 mapRes!23152))))

(declare-fun condMapEmpty!23152 () Bool)

(declare-fun mapDefault!23152 () ValueCell!6772)

