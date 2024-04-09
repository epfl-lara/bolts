; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37756 () Bool)

(assert start!37756)

(declare-fun b_free!8851 () Bool)

(declare-fun b_next!8851 () Bool)

(assert (=> start!37756 (= b_free!8851 (not b_next!8851))))

(declare-fun tp!31305 () Bool)

(declare-fun b_and!16111 () Bool)

(assert (=> start!37756 (= tp!31305 b_and!16111)))

(declare-fun b!387104 () Bool)

(declare-fun res!221227 () Bool)

(declare-fun e!234722 () Bool)

(assert (=> b!387104 (=> (not res!221227) (not e!234722))))

(declare-datatypes ((array!22915 0))(
  ( (array!22916 (arr!10923 (Array (_ BitVec 32) (_ BitVec 64))) (size!11275 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22915)

(declare-datatypes ((List!6286 0))(
  ( (Nil!6283) (Cons!6282 (h!7138 (_ BitVec 64)) (t!11444 List!6286)) )
))
(declare-fun arrayNoDuplicates!0 (array!22915 (_ BitVec 32) List!6286) Bool)

(assert (=> b!387104 (= res!221227 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6283))))

(declare-fun res!221229 () Bool)

(assert (=> start!37756 (=> (not res!221229) (not e!234722))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37756 (= res!221229 (validMask!0 mask!970))))

(assert (=> start!37756 e!234722))

(declare-datatypes ((V!13803 0))(
  ( (V!13804 (val!4806 Int)) )
))
(declare-datatypes ((ValueCell!4418 0))(
  ( (ValueCellFull!4418 (v!6999 V!13803)) (EmptyCell!4418) )
))
(declare-datatypes ((array!22917 0))(
  ( (array!22918 (arr!10924 (Array (_ BitVec 32) ValueCell!4418)) (size!11276 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22917)

(declare-fun e!234720 () Bool)

(declare-fun array_inv!8012 (array!22917) Bool)

(assert (=> start!37756 (and (array_inv!8012 _values!506) e!234720)))

(assert (=> start!37756 tp!31305))

(assert (=> start!37756 true))

(declare-fun tp_is_empty!9523 () Bool)

(assert (=> start!37756 tp_is_empty!9523))

(declare-fun array_inv!8013 (array!22915) Bool)

(assert (=> start!37756 (array_inv!8013 _keys!658)))

(declare-fun b!387105 () Bool)

(declare-fun e!234723 () Bool)

(assert (=> b!387105 (= e!234723 false)))

(declare-datatypes ((tuple2!6402 0))(
  ( (tuple2!6403 (_1!3211 (_ BitVec 64)) (_2!3211 V!13803)) )
))
(declare-datatypes ((List!6287 0))(
  ( (Nil!6284) (Cons!6283 (h!7139 tuple2!6402) (t!11445 List!6287)) )
))
(declare-datatypes ((ListLongMap!5329 0))(
  ( (ListLongMap!5330 (toList!2680 List!6287)) )
))
(declare-fun lt!181968 () ListLongMap!5329)

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!181969 () array!22915)

(declare-fun zeroValue!472 () V!13803)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13803)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!13803)

(declare-fun getCurrentListMapNoExtraKeys!914 (array!22915 array!22917 (_ BitVec 32) (_ BitVec 32) V!13803 V!13803 (_ BitVec 32) Int) ListLongMap!5329)

(assert (=> b!387105 (= lt!181968 (getCurrentListMapNoExtraKeys!914 lt!181969 (array!22918 (store (arr!10924 _values!506) i!548 (ValueCellFull!4418 v!373)) (size!11276 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181967 () ListLongMap!5329)

(assert (=> b!387105 (= lt!181967 (getCurrentListMapNoExtraKeys!914 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387106 () Bool)

(assert (=> b!387106 (= e!234722 e!234723)))

(declare-fun res!221231 () Bool)

(assert (=> b!387106 (=> (not res!221231) (not e!234723))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22915 (_ BitVec 32)) Bool)

(assert (=> b!387106 (= res!221231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181969 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!387106 (= lt!181969 (array!22916 (store (arr!10923 _keys!658) i!548 k!778) (size!11275 _keys!658)))))

(declare-fun b!387107 () Bool)

(declare-fun res!221222 () Bool)

(assert (=> b!387107 (=> (not res!221222) (not e!234722))))

(assert (=> b!387107 (= res!221222 (and (= (size!11276 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11275 _keys!658) (size!11276 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387108 () Bool)

(declare-fun res!221228 () Bool)

(assert (=> b!387108 (=> (not res!221228) (not e!234723))))

(assert (=> b!387108 (= res!221228 (arrayNoDuplicates!0 lt!181969 #b00000000000000000000000000000000 Nil!6283))))

(declare-fun b!387109 () Bool)

(declare-fun e!234721 () Bool)

(assert (=> b!387109 (= e!234721 tp_is_empty!9523)))

(declare-fun b!387110 () Bool)

(declare-fun res!221224 () Bool)

(assert (=> b!387110 (=> (not res!221224) (not e!234722))))

(assert (=> b!387110 (= res!221224 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11275 _keys!658))))))

(declare-fun b!387111 () Bool)

(declare-fun e!234718 () Bool)

(declare-fun mapRes!15849 () Bool)

(assert (=> b!387111 (= e!234720 (and e!234718 mapRes!15849))))

(declare-fun condMapEmpty!15849 () Bool)

(declare-fun mapDefault!15849 () ValueCell!4418)

