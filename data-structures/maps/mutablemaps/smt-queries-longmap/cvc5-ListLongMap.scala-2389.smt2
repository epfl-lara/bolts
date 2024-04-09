; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37804 () Bool)

(assert start!37804)

(declare-fun b_free!8899 () Bool)

(declare-fun b_next!8899 () Bool)

(assert (=> start!37804 (= b_free!8899 (not b_next!8899))))

(declare-fun tp!31449 () Bool)

(declare-fun b_and!16159 () Bool)

(assert (=> start!37804 (= tp!31449 b_and!16159)))

(declare-fun mapNonEmpty!15921 () Bool)

(declare-fun mapRes!15921 () Bool)

(declare-fun tp!31448 () Bool)

(declare-fun e!235154 () Bool)

(assert (=> mapNonEmpty!15921 (= mapRes!15921 (and tp!31448 e!235154))))

(declare-datatypes ((V!13867 0))(
  ( (V!13868 (val!4830 Int)) )
))
(declare-datatypes ((ValueCell!4442 0))(
  ( (ValueCellFull!4442 (v!7023 V!13867)) (EmptyCell!4442) )
))
(declare-fun mapRest!15921 () (Array (_ BitVec 32) ValueCell!4442))

(declare-fun mapKey!15921 () (_ BitVec 32))

(declare-datatypes ((array!23011 0))(
  ( (array!23012 (arr!10971 (Array (_ BitVec 32) ValueCell!4442)) (size!11323 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23011)

(declare-fun mapValue!15921 () ValueCell!4442)

(assert (=> mapNonEmpty!15921 (= (arr!10971 _values!506) (store mapRest!15921 mapKey!15921 mapValue!15921))))

(declare-fun b!388040 () Bool)

(declare-fun res!221947 () Bool)

(declare-fun e!235153 () Bool)

(assert (=> b!388040 (=> (not res!221947) (not e!235153))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!23013 0))(
  ( (array!23014 (arr!10972 (Array (_ BitVec 32) (_ BitVec 64))) (size!11324 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23013)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!388040 (= res!221947 (and (= (size!11323 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11324 _keys!658) (size!11323 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!388041 () Bool)

(declare-fun res!221950 () Bool)

(assert (=> b!388041 (=> (not res!221950) (not e!235153))))

(declare-datatypes ((List!6318 0))(
  ( (Nil!6315) (Cons!6314 (h!7170 (_ BitVec 64)) (t!11476 List!6318)) )
))
(declare-fun arrayNoDuplicates!0 (array!23013 (_ BitVec 32) List!6318) Bool)

(assert (=> b!388041 (= res!221950 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6315))))

(declare-fun b!388042 () Bool)

(declare-fun e!235150 () Bool)

(declare-fun tp_is_empty!9571 () Bool)

(assert (=> b!388042 (= e!235150 tp_is_empty!9571)))

(declare-fun b!388043 () Bool)

(declare-fun res!221949 () Bool)

(assert (=> b!388043 (=> (not res!221949) (not e!235153))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!388043 (= res!221949 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun res!221946 () Bool)

(assert (=> start!37804 (=> (not res!221946) (not e!235153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37804 (= res!221946 (validMask!0 mask!970))))

(assert (=> start!37804 e!235153))

(declare-fun e!235152 () Bool)

(declare-fun array_inv!8040 (array!23011) Bool)

(assert (=> start!37804 (and (array_inv!8040 _values!506) e!235152)))

(assert (=> start!37804 tp!31449))

(assert (=> start!37804 true))

(assert (=> start!37804 tp_is_empty!9571))

(declare-fun array_inv!8041 (array!23013) Bool)

(assert (=> start!37804 (array_inv!8041 _keys!658)))

(declare-fun b!388044 () Bool)

(declare-fun res!221948 () Bool)

(assert (=> b!388044 (=> (not res!221948) (not e!235153))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!388044 (= res!221948 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11324 _keys!658))))))

(declare-fun b!388045 () Bool)

(declare-fun e!235151 () Bool)

(assert (=> b!388045 (= e!235151 (not (bvslt i!548 (size!11323 _values!506))))))

(declare-datatypes ((tuple2!6434 0))(
  ( (tuple2!6435 (_1!3227 (_ BitVec 64)) (_2!3227 V!13867)) )
))
(declare-datatypes ((List!6319 0))(
  ( (Nil!6316) (Cons!6315 (h!7171 tuple2!6434) (t!11477 List!6319)) )
))
(declare-datatypes ((ListLongMap!5361 0))(
  ( (ListLongMap!5362 (toList!2696 List!6319)) )
))
(declare-fun lt!182224 () ListLongMap!5361)

(declare-fun lt!182226 () ListLongMap!5361)

(assert (=> b!388045 (and (= lt!182224 lt!182226) (= lt!182226 lt!182224))))

(declare-fun v!373 () V!13867)

(declare-fun lt!182227 () ListLongMap!5361)

(declare-fun +!994 (ListLongMap!5361 tuple2!6434) ListLongMap!5361)

(assert (=> b!388045 (= lt!182226 (+!994 lt!182227 (tuple2!6435 k!778 v!373)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((Unit!11877 0))(
  ( (Unit!11878) )
))
(declare-fun lt!182223 () Unit!11877)

(declare-fun zeroValue!472 () V!13867)

(declare-fun minValue!472 () V!13867)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!225 (array!23013 array!23011 (_ BitVec 32) (_ BitVec 32) V!13867 V!13867 (_ BitVec 32) (_ BitVec 64) V!13867 (_ BitVec 32) Int) Unit!11877)

(assert (=> b!388045 (= lt!182223 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!225 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182225 () array!23013)

(declare-fun getCurrentListMapNoExtraKeys!930 (array!23013 array!23011 (_ BitVec 32) (_ BitVec 32) V!13867 V!13867 (_ BitVec 32) Int) ListLongMap!5361)

(assert (=> b!388045 (= lt!182224 (getCurrentListMapNoExtraKeys!930 lt!182225 (array!23012 (store (arr!10971 _values!506) i!548 (ValueCellFull!4442 v!373)) (size!11323 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!388045 (= lt!182227 (getCurrentListMapNoExtraKeys!930 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!388046 () Bool)

(declare-fun res!221951 () Bool)

(assert (=> b!388046 (=> (not res!221951) (not e!235153))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!388046 (= res!221951 (validKeyInArray!0 k!778))))

(declare-fun b!388047 () Bool)

(assert (=> b!388047 (= e!235153 e!235151)))

(declare-fun res!221943 () Bool)

(assert (=> b!388047 (=> (not res!221943) (not e!235151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23013 (_ BitVec 32)) Bool)

(assert (=> b!388047 (= res!221943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182225 mask!970))))

(assert (=> b!388047 (= lt!182225 (array!23014 (store (arr!10972 _keys!658) i!548 k!778) (size!11324 _keys!658)))))

(declare-fun b!388048 () Bool)

(assert (=> b!388048 (= e!235154 tp_is_empty!9571)))

(declare-fun b!388049 () Bool)

(declare-fun res!221942 () Bool)

(assert (=> b!388049 (=> (not res!221942) (not e!235153))))

(assert (=> b!388049 (= res!221942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15921 () Bool)

(assert (=> mapIsEmpty!15921 mapRes!15921))

(declare-fun b!388050 () Bool)

(declare-fun res!221945 () Bool)

(assert (=> b!388050 (=> (not res!221945) (not e!235151))))

(assert (=> b!388050 (= res!221945 (arrayNoDuplicates!0 lt!182225 #b00000000000000000000000000000000 Nil!6315))))

(declare-fun b!388051 () Bool)

(declare-fun res!221944 () Bool)

(assert (=> b!388051 (=> (not res!221944) (not e!235153))))

(assert (=> b!388051 (= res!221944 (or (= (select (arr!10972 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10972 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!388052 () Bool)

(assert (=> b!388052 (= e!235152 (and e!235150 mapRes!15921))))

(declare-fun condMapEmpty!15921 () Bool)

(declare-fun mapDefault!15921 () ValueCell!4442)

