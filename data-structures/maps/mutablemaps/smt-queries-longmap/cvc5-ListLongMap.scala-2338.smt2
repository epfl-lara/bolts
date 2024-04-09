; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37498 () Bool)

(assert start!37498)

(declare-fun b_free!8617 () Bool)

(declare-fun b_next!8617 () Bool)

(assert (=> start!37498 (= b_free!8617 (not b_next!8617))))

(declare-fun tp!30567 () Bool)

(declare-fun b_and!15877 () Bool)

(assert (=> start!37498 (= tp!30567 b_and!15877)))

(declare-fun b!382039 () Bool)

(declare-fun e!232195 () Bool)

(declare-fun tp_is_empty!9265 () Bool)

(assert (=> b!382039 (= e!232195 tp_is_empty!9265)))

(declare-fun b!382040 () Bool)

(declare-fun res!217326 () Bool)

(declare-fun e!232191 () Bool)

(assert (=> b!382040 (=> (not res!217326) (not e!232191))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22421 0))(
  ( (array!22422 (arr!10676 (Array (_ BitVec 32) (_ BitVec 64))) (size!11028 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22421)

(assert (=> b!382040 (= res!217326 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11028 _keys!658))))))

(declare-fun b!382041 () Bool)

(declare-fun res!217318 () Bool)

(assert (=> b!382041 (=> (not res!217318) (not e!232191))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22421 (_ BitVec 32)) Bool)

(assert (=> b!382041 (= res!217318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!382042 () Bool)

(declare-fun e!232196 () Bool)

(assert (=> b!382042 (= e!232196 true)))

(declare-datatypes ((V!13459 0))(
  ( (V!13460 (val!4677 Int)) )
))
(declare-datatypes ((tuple2!6236 0))(
  ( (tuple2!6237 (_1!3128 (_ BitVec 64)) (_2!3128 V!13459)) )
))
(declare-datatypes ((List!6105 0))(
  ( (Nil!6102) (Cons!6101 (h!6957 tuple2!6236) (t!11263 List!6105)) )
))
(declare-datatypes ((ListLongMap!5163 0))(
  ( (ListLongMap!5164 (toList!2597 List!6105)) )
))
(declare-fun lt!179252 () ListLongMap!5163)

(declare-fun lt!179254 () ListLongMap!5163)

(assert (=> b!382042 (= lt!179252 lt!179254)))

(declare-fun b!382043 () Bool)

(declare-fun res!217324 () Bool)

(declare-fun e!232193 () Bool)

(assert (=> b!382043 (=> (not res!217324) (not e!232193))))

(declare-fun lt!179256 () array!22421)

(declare-datatypes ((List!6106 0))(
  ( (Nil!6103) (Cons!6102 (h!6958 (_ BitVec 64)) (t!11264 List!6106)) )
))
(declare-fun arrayNoDuplicates!0 (array!22421 (_ BitVec 32) List!6106) Bool)

(assert (=> b!382043 (= res!217324 (arrayNoDuplicates!0 lt!179256 #b00000000000000000000000000000000 Nil!6103))))

(declare-fun mapIsEmpty!15462 () Bool)

(declare-fun mapRes!15462 () Bool)

(assert (=> mapIsEmpty!15462 mapRes!15462))

(declare-fun mapNonEmpty!15462 () Bool)

(declare-fun tp!30566 () Bool)

(declare-fun e!232197 () Bool)

(assert (=> mapNonEmpty!15462 (= mapRes!15462 (and tp!30566 e!232197))))

(declare-datatypes ((ValueCell!4289 0))(
  ( (ValueCellFull!4289 (v!6870 V!13459)) (EmptyCell!4289) )
))
(declare-fun mapValue!15462 () ValueCell!4289)

(declare-datatypes ((array!22423 0))(
  ( (array!22424 (arr!10677 (Array (_ BitVec 32) ValueCell!4289)) (size!11029 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22423)

(declare-fun mapKey!15462 () (_ BitVec 32))

(declare-fun mapRest!15462 () (Array (_ BitVec 32) ValueCell!4289))

(assert (=> mapNonEmpty!15462 (= (arr!10677 _values!506) (store mapRest!15462 mapKey!15462 mapValue!15462))))

(declare-fun b!382044 () Bool)

(declare-fun res!217323 () Bool)

(assert (=> b!382044 (=> (not res!217323) (not e!232191))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382044 (= res!217323 (validKeyInArray!0 k!778))))

(declare-fun b!382045 () Bool)

(assert (=> b!382045 (= e!232191 e!232193)))

(declare-fun res!217322 () Bool)

(assert (=> b!382045 (=> (not res!217322) (not e!232193))))

(assert (=> b!382045 (= res!217322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179256 mask!970))))

(assert (=> b!382045 (= lt!179256 (array!22422 (store (arr!10676 _keys!658) i!548 k!778) (size!11028 _keys!658)))))

(declare-fun b!382046 () Bool)

(declare-fun res!217327 () Bool)

(assert (=> b!382046 (=> (not res!217327) (not e!232191))))

(declare-fun arrayContainsKey!0 (array!22421 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382046 (= res!217327 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun res!217321 () Bool)

(assert (=> start!37498 (=> (not res!217321) (not e!232191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37498 (= res!217321 (validMask!0 mask!970))))

(assert (=> start!37498 e!232191))

(declare-fun e!232192 () Bool)

(declare-fun array_inv!7838 (array!22423) Bool)

(assert (=> start!37498 (and (array_inv!7838 _values!506) e!232192)))

(assert (=> start!37498 tp!30567))

(assert (=> start!37498 true))

(assert (=> start!37498 tp_is_empty!9265))

(declare-fun array_inv!7839 (array!22421) Bool)

(assert (=> start!37498 (array_inv!7839 _keys!658)))

(declare-fun b!382047 () Bool)

(declare-fun res!217325 () Bool)

(assert (=> b!382047 (=> (not res!217325) (not e!232191))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382047 (= res!217325 (and (= (size!11029 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11028 _keys!658) (size!11029 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!382048 () Bool)

(declare-fun res!217328 () Bool)

(assert (=> b!382048 (=> (not res!217328) (not e!232191))))

(assert (=> b!382048 (= res!217328 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6103))))

(declare-fun b!382049 () Bool)

(assert (=> b!382049 (= e!232193 (not e!232196))))

(declare-fun res!217319 () Bool)

(assert (=> b!382049 (=> res!217319 e!232196)))

(declare-fun lt!179260 () Bool)

(assert (=> b!382049 (= res!217319 (or (and (not lt!179260) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179260) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179260)))))

(assert (=> b!382049 (= lt!179260 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!179255 () ListLongMap!5163)

(declare-fun zeroValue!472 () V!13459)

(declare-fun minValue!472 () V!13459)

(declare-fun getCurrentListMap!2016 (array!22421 array!22423 (_ BitVec 32) (_ BitVec 32) V!13459 V!13459 (_ BitVec 32) Int) ListLongMap!5163)

(assert (=> b!382049 (= lt!179255 (getCurrentListMap!2016 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179259 () array!22423)

(assert (=> b!382049 (= lt!179252 (getCurrentListMap!2016 lt!179256 lt!179259 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179253 () ListLongMap!5163)

(assert (=> b!382049 (and (= lt!179254 lt!179253) (= lt!179253 lt!179254))))

(declare-fun v!373 () V!13459)

(declare-fun lt!179257 () ListLongMap!5163)

(declare-fun +!934 (ListLongMap!5163 tuple2!6236) ListLongMap!5163)

(assert (=> b!382049 (= lt!179253 (+!934 lt!179257 (tuple2!6237 k!778 v!373)))))

(declare-datatypes ((Unit!11761 0))(
  ( (Unit!11762) )
))
(declare-fun lt!179258 () Unit!11761)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!167 (array!22421 array!22423 (_ BitVec 32) (_ BitVec 32) V!13459 V!13459 (_ BitVec 32) (_ BitVec 64) V!13459 (_ BitVec 32) Int) Unit!11761)

(assert (=> b!382049 (= lt!179258 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!167 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!834 (array!22421 array!22423 (_ BitVec 32) (_ BitVec 32) V!13459 V!13459 (_ BitVec 32) Int) ListLongMap!5163)

(assert (=> b!382049 (= lt!179254 (getCurrentListMapNoExtraKeys!834 lt!179256 lt!179259 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382049 (= lt!179259 (array!22424 (store (arr!10677 _values!506) i!548 (ValueCellFull!4289 v!373)) (size!11029 _values!506)))))

(assert (=> b!382049 (= lt!179257 (getCurrentListMapNoExtraKeys!834 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382050 () Bool)

(assert (=> b!382050 (= e!232192 (and e!232195 mapRes!15462))))

(declare-fun condMapEmpty!15462 () Bool)

(declare-fun mapDefault!15462 () ValueCell!4289)

