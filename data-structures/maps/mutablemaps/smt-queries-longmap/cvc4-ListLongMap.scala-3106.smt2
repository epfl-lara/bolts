; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43660 () Bool)

(assert start!43660)

(declare-fun b_free!12359 () Bool)

(declare-fun b_next!12359 () Bool)

(assert (=> start!43660 (= b_free!12359 (not b_next!12359))))

(declare-fun tp!43368 () Bool)

(declare-fun b_and!21143 () Bool)

(assert (=> start!43660 (= tp!43368 b_and!21143)))

(declare-fun b!483315 () Bool)

(declare-fun e!284435 () Bool)

(declare-fun tp_is_empty!13871 () Bool)

(assert (=> b!483315 (= e!284435 tp_is_empty!13871)))

(declare-fun res!288080 () Bool)

(declare-fun e!284433 () Bool)

(assert (=> start!43660 (=> (not res!288080) (not e!284433))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43660 (= res!288080 (validMask!0 mask!2352))))

(assert (=> start!43660 e!284433))

(assert (=> start!43660 true))

(assert (=> start!43660 tp_is_empty!13871))

(declare-datatypes ((V!19565 0))(
  ( (V!19566 (val!6983 Int)) )
))
(declare-datatypes ((ValueCell!6574 0))(
  ( (ValueCellFull!6574 (v!9275 V!19565)) (EmptyCell!6574) )
))
(declare-datatypes ((array!31371 0))(
  ( (array!31372 (arr!15082 (Array (_ BitVec 32) ValueCell!6574)) (size!15440 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31371)

(declare-fun e!284436 () Bool)

(declare-fun array_inv!10856 (array!31371) Bool)

(assert (=> start!43660 (and (array_inv!10856 _values!1516) e!284436)))

(assert (=> start!43660 tp!43368))

(declare-datatypes ((array!31373 0))(
  ( (array!31374 (arr!15083 (Array (_ BitVec 32) (_ BitVec 64))) (size!15441 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31373)

(declare-fun array_inv!10857 (array!31373) Bool)

(assert (=> start!43660 (array_inv!10857 _keys!1874)))

(declare-fun mapIsEmpty!22525 () Bool)

(declare-fun mapRes!22525 () Bool)

(assert (=> mapIsEmpty!22525 mapRes!22525))

(declare-fun b!483316 () Bool)

(declare-fun res!288074 () Bool)

(assert (=> b!483316 (=> (not res!288074) (not e!284433))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!483316 (= res!288074 (and (= (size!15440 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15441 _keys!1874) (size!15440 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!22525 () Bool)

(declare-fun tp!43369 () Bool)

(assert (=> mapNonEmpty!22525 (= mapRes!22525 (and tp!43369 e!284435))))

(declare-fun mapKey!22525 () (_ BitVec 32))

(declare-fun mapValue!22525 () ValueCell!6574)

(declare-fun mapRest!22525 () (Array (_ BitVec 32) ValueCell!6574))

(assert (=> mapNonEmpty!22525 (= (arr!15082 _values!1516) (store mapRest!22525 mapKey!22525 mapValue!22525))))

(declare-fun b!483317 () Bool)

(declare-fun e!284434 () Bool)

(assert (=> b!483317 (= e!284433 (not e!284434))))

(declare-fun res!288081 () Bool)

(assert (=> b!483317 (=> (not res!288081) (not e!284434))))

(declare-datatypes ((SeekEntryResult!3566 0))(
  ( (MissingZero!3566 (index!16443 (_ BitVec 32))) (Found!3566 (index!16444 (_ BitVec 32))) (Intermediate!3566 (undefined!4378 Bool) (index!16445 (_ BitVec 32)) (x!45383 (_ BitVec 32))) (Undefined!3566) (MissingVacant!3566 (index!16446 (_ BitVec 32))) )
))
(declare-fun lt!219129 () SeekEntryResult!3566)

(assert (=> b!483317 (= res!288081 (is-Found!3566 lt!219129))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31373 (_ BitVec 32)) SeekEntryResult!3566)

(assert (=> b!483317 (= lt!219129 (seekEntryOrOpen!0 k!1332 _keys!1874 mask!2352))))

(declare-fun lt!219131 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31373 (_ BitVec 32)) Bool)

(assert (=> b!483317 (arrayForallSeekEntryOrOpenFound!0 lt!219131 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14140 0))(
  ( (Unit!14141) )
))
(declare-fun lt!219130 () Unit!14140)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31373 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14140)

(assert (=> b!483317 (= lt!219130 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!219131))))

(declare-fun arrayScanForKey!0 (array!31373 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!483317 (= lt!219131 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun e!284437 () Bool)

(assert (=> b!483317 e!284437))

(declare-fun c!58045 () Bool)

(assert (=> b!483317 (= c!58045 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!219128 () Unit!14140)

(declare-fun minValue!1458 () V!19565)

(declare-fun zeroValue!1458 () V!19565)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!156 (array!31373 array!31371 (_ BitVec 32) (_ BitVec 32) V!19565 V!19565 (_ BitVec 64) Int) Unit!14140)

(assert (=> b!483317 (= lt!219128 (lemmaKeyInListMapIsInArray!156 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!483318 () Bool)

(declare-fun res!288076 () Bool)

(assert (=> b!483318 (=> (not res!288076) (not e!284433))))

(declare-datatypes ((List!9281 0))(
  ( (Nil!9278) (Cons!9277 (h!10133 (_ BitVec 64)) (t!15509 List!9281)) )
))
(declare-fun arrayNoDuplicates!0 (array!31373 (_ BitVec 32) List!9281) Bool)

(assert (=> b!483318 (= res!288076 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9278))))

(declare-fun b!483319 () Bool)

(declare-fun e!284431 () Bool)

(assert (=> b!483319 (= e!284431 tp_is_empty!13871)))

(declare-fun b!483320 () Bool)

(declare-fun res!288075 () Bool)

(assert (=> b!483320 (=> (not res!288075) (not e!284433))))

(declare-datatypes ((tuple2!9164 0))(
  ( (tuple2!9165 (_1!4592 (_ BitVec 64)) (_2!4592 V!19565)) )
))
(declare-datatypes ((List!9282 0))(
  ( (Nil!9279) (Cons!9278 (h!10134 tuple2!9164) (t!15510 List!9282)) )
))
(declare-datatypes ((ListLongMap!8091 0))(
  ( (ListLongMap!8092 (toList!4061 List!9282)) )
))
(declare-fun contains!2675 (ListLongMap!8091 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2353 (array!31373 array!31371 (_ BitVec 32) (_ BitVec 32) V!19565 V!19565 (_ BitVec 32) Int) ListLongMap!8091)

(assert (=> b!483320 (= res!288075 (contains!2675 (getCurrentListMap!2353 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!483321 () Bool)

(declare-fun res!288079 () Bool)

(assert (=> b!483321 (=> (not res!288079) (not e!284434))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!483321 (= res!288079 (inRange!0 (index!16444 lt!219129) mask!2352))))

(declare-fun b!483322 () Bool)

(declare-fun arrayContainsKey!0 (array!31373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!483322 (= e!284437 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!483323 () Bool)

(declare-fun res!288077 () Bool)

(assert (=> b!483323 (=> (not res!288077) (not e!284433))))

(assert (=> b!483323 (= res!288077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!483324 () Bool)

(assert (=> b!483324 (= e!284437 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!483325 () Bool)

(assert (=> b!483325 (= e!284436 (and e!284431 mapRes!22525))))

(declare-fun condMapEmpty!22525 () Bool)

(declare-fun mapDefault!22525 () ValueCell!6574)

