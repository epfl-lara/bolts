; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37808 () Bool)

(assert start!37808)

(declare-fun b_free!8903 () Bool)

(declare-fun b_next!8903 () Bool)

(assert (=> start!37808 (= b_free!8903 (not b_next!8903))))

(declare-fun tp!31461 () Bool)

(declare-fun b_and!16163 () Bool)

(assert (=> start!37808 (= tp!31461 b_and!16163)))

(declare-fun b!388118 () Bool)

(declare-fun res!222002 () Bool)

(declare-fun e!235188 () Bool)

(assert (=> b!388118 (=> (not res!222002) (not e!235188))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!23019 0))(
  ( (array!23020 (arr!10975 (Array (_ BitVec 32) (_ BitVec 64))) (size!11327 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23019)

(assert (=> b!388118 (= res!222002 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11327 _keys!658))))))

(declare-fun b!388119 () Bool)

(declare-fun e!235187 () Bool)

(declare-datatypes ((V!13871 0))(
  ( (V!13872 (val!4832 Int)) )
))
(declare-datatypes ((ValueCell!4444 0))(
  ( (ValueCellFull!4444 (v!7025 V!13871)) (EmptyCell!4444) )
))
(declare-datatypes ((array!23021 0))(
  ( (array!23022 (arr!10976 (Array (_ BitVec 32) ValueCell!4444)) (size!11328 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23021)

(assert (=> b!388119 (= e!235187 (not (bvslt i!548 (size!11328 _values!506))))))

(declare-datatypes ((tuple2!6438 0))(
  ( (tuple2!6439 (_1!3229 (_ BitVec 64)) (_2!3229 V!13871)) )
))
(declare-datatypes ((List!6322 0))(
  ( (Nil!6319) (Cons!6318 (h!7174 tuple2!6438) (t!11480 List!6322)) )
))
(declare-datatypes ((ListLongMap!5365 0))(
  ( (ListLongMap!5366 (toList!2698 List!6322)) )
))
(declare-fun lt!182254 () ListLongMap!5365)

(declare-fun lt!182255 () ListLongMap!5365)

(assert (=> b!388119 (and (= lt!182254 lt!182255) (= lt!182255 lt!182254))))

(declare-fun v!373 () V!13871)

(declare-fun lt!182256 () ListLongMap!5365)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!996 (ListLongMap!5365 tuple2!6438) ListLongMap!5365)

(assert (=> b!388119 (= lt!182255 (+!996 lt!182256 (tuple2!6439 k!778 v!373)))))

(declare-datatypes ((Unit!11881 0))(
  ( (Unit!11882) )
))
(declare-fun lt!182253 () Unit!11881)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13871)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13871)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!227 (array!23019 array!23021 (_ BitVec 32) (_ BitVec 32) V!13871 V!13871 (_ BitVec 32) (_ BitVec 64) V!13871 (_ BitVec 32) Int) Unit!11881)

(assert (=> b!388119 (= lt!182253 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!227 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182257 () array!23019)

(declare-fun getCurrentListMapNoExtraKeys!932 (array!23019 array!23021 (_ BitVec 32) (_ BitVec 32) V!13871 V!13871 (_ BitVec 32) Int) ListLongMap!5365)

(assert (=> b!388119 (= lt!182254 (getCurrentListMapNoExtraKeys!932 lt!182257 (array!23022 (store (arr!10976 _values!506) i!548 (ValueCellFull!4444 v!373)) (size!11328 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!388119 (= lt!182256 (getCurrentListMapNoExtraKeys!932 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15927 () Bool)

(declare-fun mapRes!15927 () Bool)

(assert (=> mapIsEmpty!15927 mapRes!15927))

(declare-fun b!388120 () Bool)

(declare-fun res!222005 () Bool)

(assert (=> b!388120 (=> (not res!222005) (not e!235188))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!388120 (= res!222005 (validKeyInArray!0 k!778))))

(declare-fun b!388121 () Bool)

(declare-fun e!235191 () Bool)

(declare-fun tp_is_empty!9575 () Bool)

(assert (=> b!388121 (= e!235191 tp_is_empty!9575)))

(declare-fun b!388122 () Bool)

(declare-fun res!222008 () Bool)

(assert (=> b!388122 (=> (not res!222008) (not e!235188))))

(declare-datatypes ((List!6323 0))(
  ( (Nil!6320) (Cons!6319 (h!7175 (_ BitVec 64)) (t!11481 List!6323)) )
))
(declare-fun arrayNoDuplicates!0 (array!23019 (_ BitVec 32) List!6323) Bool)

(assert (=> b!388122 (= res!222008 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6320))))

(declare-fun b!388123 () Bool)

(declare-fun res!222007 () Bool)

(assert (=> b!388123 (=> (not res!222007) (not e!235188))))

(declare-fun arrayContainsKey!0 (array!23019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!388123 (= res!222007 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!388124 () Bool)

(assert (=> b!388124 (= e!235188 e!235187)))

(declare-fun res!222010 () Bool)

(assert (=> b!388124 (=> (not res!222010) (not e!235187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23019 (_ BitVec 32)) Bool)

(assert (=> b!388124 (= res!222010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182257 mask!970))))

(assert (=> b!388124 (= lt!182257 (array!23020 (store (arr!10975 _keys!658) i!548 k!778) (size!11327 _keys!658)))))

(declare-fun res!222004 () Bool)

(assert (=> start!37808 (=> (not res!222004) (not e!235188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37808 (= res!222004 (validMask!0 mask!970))))

(assert (=> start!37808 e!235188))

(declare-fun e!235190 () Bool)

(declare-fun array_inv!8044 (array!23021) Bool)

(assert (=> start!37808 (and (array_inv!8044 _values!506) e!235190)))

(assert (=> start!37808 tp!31461))

(assert (=> start!37808 true))

(assert (=> start!37808 tp_is_empty!9575))

(declare-fun array_inv!8045 (array!23019) Bool)

(assert (=> start!37808 (array_inv!8045 _keys!658)))

(declare-fun b!388125 () Bool)

(declare-fun e!235189 () Bool)

(assert (=> b!388125 (= e!235190 (and e!235189 mapRes!15927))))

(declare-fun condMapEmpty!15927 () Bool)

(declare-fun mapDefault!15927 () ValueCell!4444)

