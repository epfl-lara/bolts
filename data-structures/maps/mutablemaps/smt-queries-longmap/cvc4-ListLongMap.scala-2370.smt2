; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37694 () Bool)

(assert start!37694)

(declare-fun b_free!8789 () Bool)

(declare-fun b_next!8789 () Bool)

(assert (=> start!37694 (= b_free!8789 (not b_next!8789))))

(declare-fun tp!31119 () Bool)

(declare-fun b_and!16049 () Bool)

(assert (=> start!37694 (= tp!31119 b_and!16049)))

(declare-fun b!385895 () Bool)

(declare-fun res!220301 () Bool)

(declare-fun e!234160 () Bool)

(assert (=> b!385895 (=> (not res!220301) (not e!234160))))

(declare-datatypes ((array!22797 0))(
  ( (array!22798 (arr!10864 (Array (_ BitVec 32) (_ BitVec 64))) (size!11216 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22797)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22797 (_ BitVec 32)) Bool)

(assert (=> b!385895 (= res!220301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385896 () Bool)

(declare-fun e!234163 () Bool)

(assert (=> b!385896 (= e!234163 false)))

(declare-datatypes ((V!13719 0))(
  ( (V!13720 (val!4775 Int)) )
))
(declare-datatypes ((ValueCell!4387 0))(
  ( (ValueCellFull!4387 (v!6968 V!13719)) (EmptyCell!4387) )
))
(declare-datatypes ((array!22799 0))(
  ( (array!22800 (arr!10865 (Array (_ BitVec 32) ValueCell!4387)) (size!11217 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22799)

(declare-datatypes ((tuple2!6366 0))(
  ( (tuple2!6367 (_1!3193 (_ BitVec 64)) (_2!3193 V!13719)) )
))
(declare-datatypes ((List!6244 0))(
  ( (Nil!6241) (Cons!6240 (h!7096 tuple2!6366) (t!11402 List!6244)) )
))
(declare-datatypes ((ListLongMap!5293 0))(
  ( (ListLongMap!5294 (toList!2662 List!6244)) )
))
(declare-fun lt!181690 () ListLongMap!5293)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13719)

(declare-fun lt!181689 () array!22797)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13719)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!13719)

(declare-fun getCurrentListMapNoExtraKeys!896 (array!22797 array!22799 (_ BitVec 32) (_ BitVec 32) V!13719 V!13719 (_ BitVec 32) Int) ListLongMap!5293)

(assert (=> b!385896 (= lt!181690 (getCurrentListMapNoExtraKeys!896 lt!181689 (array!22800 (store (arr!10865 _values!506) i!548 (ValueCellFull!4387 v!373)) (size!11217 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181688 () ListLongMap!5293)

(assert (=> b!385896 (= lt!181688 (getCurrentListMapNoExtraKeys!896 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!385897 () Bool)

(declare-fun res!220294 () Bool)

(assert (=> b!385897 (=> (not res!220294) (not e!234160))))

(assert (=> b!385897 (= res!220294 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11216 _keys!658))))))

(declare-fun mapIsEmpty!15756 () Bool)

(declare-fun mapRes!15756 () Bool)

(assert (=> mapIsEmpty!15756 mapRes!15756))

(declare-fun b!385898 () Bool)

(declare-fun e!234162 () Bool)

(declare-fun tp_is_empty!9461 () Bool)

(assert (=> b!385898 (= e!234162 tp_is_empty!9461)))

(declare-fun b!385899 () Bool)

(declare-fun res!220297 () Bool)

(assert (=> b!385899 (=> (not res!220297) (not e!234160))))

(assert (=> b!385899 (= res!220297 (and (= (size!11217 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11216 _keys!658) (size!11217 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!220296 () Bool)

(assert (=> start!37694 (=> (not res!220296) (not e!234160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37694 (= res!220296 (validMask!0 mask!970))))

(assert (=> start!37694 e!234160))

(declare-fun e!234164 () Bool)

(declare-fun array_inv!7972 (array!22799) Bool)

(assert (=> start!37694 (and (array_inv!7972 _values!506) e!234164)))

(assert (=> start!37694 tp!31119))

(assert (=> start!37694 true))

(assert (=> start!37694 tp_is_empty!9461))

(declare-fun array_inv!7973 (array!22797) Bool)

(assert (=> start!37694 (array_inv!7973 _keys!658)))

(declare-fun b!385900 () Bool)

(assert (=> b!385900 (= e!234160 e!234163)))

(declare-fun res!220293 () Bool)

(assert (=> b!385900 (=> (not res!220293) (not e!234163))))

(assert (=> b!385900 (= res!220293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181689 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!385900 (= lt!181689 (array!22798 (store (arr!10864 _keys!658) i!548 k!778) (size!11216 _keys!658)))))

(declare-fun mapNonEmpty!15756 () Bool)

(declare-fun tp!31118 () Bool)

(assert (=> mapNonEmpty!15756 (= mapRes!15756 (and tp!31118 e!234162))))

(declare-fun mapRest!15756 () (Array (_ BitVec 32) ValueCell!4387))

(declare-fun mapValue!15756 () ValueCell!4387)

(declare-fun mapKey!15756 () (_ BitVec 32))

(assert (=> mapNonEmpty!15756 (= (arr!10865 _values!506) (store mapRest!15756 mapKey!15756 mapValue!15756))))

(declare-fun b!385901 () Bool)

(declare-fun res!220292 () Bool)

(assert (=> b!385901 (=> (not res!220292) (not e!234163))))

(declare-datatypes ((List!6245 0))(
  ( (Nil!6242) (Cons!6241 (h!7097 (_ BitVec 64)) (t!11403 List!6245)) )
))
(declare-fun arrayNoDuplicates!0 (array!22797 (_ BitVec 32) List!6245) Bool)

(assert (=> b!385901 (= res!220292 (arrayNoDuplicates!0 lt!181689 #b00000000000000000000000000000000 Nil!6242))))

(declare-fun b!385902 () Bool)

(declare-fun e!234161 () Bool)

(assert (=> b!385902 (= e!234161 tp_is_empty!9461)))

(declare-fun b!385903 () Bool)

(declare-fun res!220298 () Bool)

(assert (=> b!385903 (=> (not res!220298) (not e!234160))))

(declare-fun arrayContainsKey!0 (array!22797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385903 (= res!220298 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!385904 () Bool)

(declare-fun res!220300 () Bool)

(assert (=> b!385904 (=> (not res!220300) (not e!234160))))

(assert (=> b!385904 (= res!220300 (or (= (select (arr!10864 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10864 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!385905 () Bool)

(declare-fun res!220299 () Bool)

(assert (=> b!385905 (=> (not res!220299) (not e!234160))))

(assert (=> b!385905 (= res!220299 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6242))))

(declare-fun b!385906 () Bool)

(assert (=> b!385906 (= e!234164 (and e!234161 mapRes!15756))))

(declare-fun condMapEmpty!15756 () Bool)

(declare-fun mapDefault!15756 () ValueCell!4387)

