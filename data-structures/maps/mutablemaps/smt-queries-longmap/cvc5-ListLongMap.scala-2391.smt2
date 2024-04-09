; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37838 () Bool)

(assert start!37838)

(declare-fun b_free!8911 () Bool)

(declare-fun b_next!8911 () Bool)

(assert (=> start!37838 (= b_free!8911 (not b_next!8911))))

(declare-fun tp!31488 () Bool)

(declare-fun b_and!16183 () Bool)

(assert (=> start!37838 (= tp!31488 b_and!16183)))

(declare-fun b!388488 () Bool)

(declare-fun res!222231 () Bool)

(declare-fun e!235405 () Bool)

(assert (=> b!388488 (=> (not res!222231) (not e!235405))))

(declare-datatypes ((array!23035 0))(
  ( (array!23036 (arr!10982 (Array (_ BitVec 32) (_ BitVec 64))) (size!11334 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23035)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23035 (_ BitVec 32)) Bool)

(assert (=> b!388488 (= res!222231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!388489 () Bool)

(declare-fun res!222233 () Bool)

(assert (=> b!388489 (=> (not res!222233) (not e!235405))))

(declare-datatypes ((List!6328 0))(
  ( (Nil!6325) (Cons!6324 (h!7180 (_ BitVec 64)) (t!11488 List!6328)) )
))
(declare-fun arrayNoDuplicates!0 (array!23035 (_ BitVec 32) List!6328) Bool)

(assert (=> b!388489 (= res!222233 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6325))))

(declare-fun b!388490 () Bool)

(declare-fun e!235401 () Bool)

(declare-fun tp_is_empty!9583 () Bool)

(assert (=> b!388490 (= e!235401 tp_is_empty!9583)))

(declare-fun mapNonEmpty!15942 () Bool)

(declare-fun mapRes!15942 () Bool)

(declare-fun tp!31487 () Bool)

(assert (=> mapNonEmpty!15942 (= mapRes!15942 (and tp!31487 e!235401))))

(declare-fun mapKey!15942 () (_ BitVec 32))

(declare-datatypes ((V!13883 0))(
  ( (V!13884 (val!4836 Int)) )
))
(declare-datatypes ((ValueCell!4448 0))(
  ( (ValueCellFull!4448 (v!7033 V!13883)) (EmptyCell!4448) )
))
(declare-datatypes ((array!23037 0))(
  ( (array!23038 (arr!10983 (Array (_ BitVec 32) ValueCell!4448)) (size!11335 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23037)

(declare-fun mapValue!15942 () ValueCell!4448)

(declare-fun mapRest!15942 () (Array (_ BitVec 32) ValueCell!4448))

(assert (=> mapNonEmpty!15942 (= (arr!10983 _values!506) (store mapRest!15942 mapKey!15942 mapValue!15942))))

(declare-fun b!388492 () Bool)

(declare-fun res!222224 () Bool)

(assert (=> b!388492 (=> (not res!222224) (not e!235405))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!388492 (= res!222224 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11334 _keys!658))))))

(declare-fun b!388493 () Bool)

(declare-fun e!235400 () Bool)

(assert (=> b!388493 (= e!235405 e!235400)))

(declare-fun res!222229 () Bool)

(assert (=> b!388493 (=> (not res!222229) (not e!235400))))

(declare-fun lt!182504 () array!23035)

(assert (=> b!388493 (= res!222229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182504 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!388493 (= lt!182504 (array!23036 (store (arr!10982 _keys!658) i!548 k!778) (size!11334 _keys!658)))))

(declare-fun b!388494 () Bool)

(declare-fun e!235406 () Bool)

(assert (=> b!388494 (= e!235400 (not e!235406))))

(declare-fun res!222232 () Bool)

(assert (=> b!388494 (=> res!222232 e!235406)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!388494 (= res!222232 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6444 0))(
  ( (tuple2!6445 (_1!3232 (_ BitVec 64)) (_2!3232 V!13883)) )
))
(declare-datatypes ((List!6329 0))(
  ( (Nil!6326) (Cons!6325 (h!7181 tuple2!6444) (t!11489 List!6329)) )
))
(declare-datatypes ((ListLongMap!5371 0))(
  ( (ListLongMap!5372 (toList!2701 List!6329)) )
))
(declare-fun lt!182510 () ListLongMap!5371)

(declare-fun zeroValue!472 () V!13883)

(declare-fun minValue!472 () V!13883)

(declare-fun getCurrentListMap!2073 (array!23035 array!23037 (_ BitVec 32) (_ BitVec 32) V!13883 V!13883 (_ BitVec 32) Int) ListLongMap!5371)

(assert (=> b!388494 (= lt!182510 (getCurrentListMap!2073 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182509 () array!23037)

(declare-fun lt!182508 () ListLongMap!5371)

(assert (=> b!388494 (= lt!182508 (getCurrentListMap!2073 lt!182504 lt!182509 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182506 () ListLongMap!5371)

(declare-fun lt!182505 () ListLongMap!5371)

(assert (=> b!388494 (and (= lt!182506 lt!182505) (= lt!182505 lt!182506))))

(declare-fun v!373 () V!13883)

(declare-fun lt!182507 () ListLongMap!5371)

(declare-fun +!999 (ListLongMap!5371 tuple2!6444) ListLongMap!5371)

(assert (=> b!388494 (= lt!182505 (+!999 lt!182507 (tuple2!6445 k!778 v!373)))))

(declare-datatypes ((Unit!11889 0))(
  ( (Unit!11890) )
))
(declare-fun lt!182501 () Unit!11889)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!230 (array!23035 array!23037 (_ BitVec 32) (_ BitVec 32) V!13883 V!13883 (_ BitVec 32) (_ BitVec 64) V!13883 (_ BitVec 32) Int) Unit!11889)

(assert (=> b!388494 (= lt!182501 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!230 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!935 (array!23035 array!23037 (_ BitVec 32) (_ BitVec 32) V!13883 V!13883 (_ BitVec 32) Int) ListLongMap!5371)

(assert (=> b!388494 (= lt!182506 (getCurrentListMapNoExtraKeys!935 lt!182504 lt!182509 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!388494 (= lt!182509 (array!23038 (store (arr!10983 _values!506) i!548 (ValueCellFull!4448 v!373)) (size!11335 _values!506)))))

(assert (=> b!388494 (= lt!182507 (getCurrentListMapNoExtraKeys!935 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!388495 () Bool)

(declare-fun res!222230 () Bool)

(assert (=> b!388495 (=> (not res!222230) (not e!235405))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!388495 (= res!222230 (validKeyInArray!0 k!778))))

(declare-fun mapIsEmpty!15942 () Bool)

(assert (=> mapIsEmpty!15942 mapRes!15942))

(declare-fun b!388496 () Bool)

(declare-fun res!222225 () Bool)

(assert (=> b!388496 (=> (not res!222225) (not e!235405))))

(assert (=> b!388496 (= res!222225 (and (= (size!11335 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11334 _keys!658) (size!11335 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!222228 () Bool)

(assert (=> start!37838 (=> (not res!222228) (not e!235405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37838 (= res!222228 (validMask!0 mask!970))))

(assert (=> start!37838 e!235405))

(declare-fun e!235402 () Bool)

(declare-fun array_inv!8050 (array!23037) Bool)

(assert (=> start!37838 (and (array_inv!8050 _values!506) e!235402)))

(assert (=> start!37838 tp!31488))

(assert (=> start!37838 true))

(assert (=> start!37838 tp_is_empty!9583))

(declare-fun array_inv!8051 (array!23035) Bool)

(assert (=> start!37838 (array_inv!8051 _keys!658)))

(declare-fun b!388491 () Bool)

(declare-fun res!222226 () Bool)

(assert (=> b!388491 (=> (not res!222226) (not e!235400))))

(assert (=> b!388491 (= res!222226 (arrayNoDuplicates!0 lt!182504 #b00000000000000000000000000000000 Nil!6325))))

(declare-fun b!388497 () Bool)

(declare-fun res!222227 () Bool)

(assert (=> b!388497 (=> (not res!222227) (not e!235405))))

(assert (=> b!388497 (= res!222227 (or (= (select (arr!10982 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10982 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!388498 () Bool)

(declare-fun e!235404 () Bool)

(assert (=> b!388498 (= e!235404 tp_is_empty!9583)))

(declare-fun b!388499 () Bool)

(assert (=> b!388499 (= e!235402 (and e!235404 mapRes!15942))))

(declare-fun condMapEmpty!15942 () Bool)

(declare-fun mapDefault!15942 () ValueCell!4448)

