; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38586 () Bool)

(assert start!38586)

(declare-fun b_free!9115 () Bool)

(declare-fun b_next!9115 () Bool)

(assert (=> start!38586 (= b_free!9115 (not b_next!9115))))

(declare-fun tp!32468 () Bool)

(declare-fun b_and!16519 () Bool)

(assert (=> start!38586 (= tp!32468 b_and!16519)))

(declare-fun b!399196 () Bool)

(declare-fun e!241104 () Bool)

(declare-fun tp_is_empty!9997 () Bool)

(assert (=> b!399196 (= e!241104 tp_is_empty!9997)))

(declare-datatypes ((V!14435 0))(
  ( (V!14436 (val!5043 Int)) )
))
(declare-datatypes ((tuple2!6610 0))(
  ( (tuple2!6611 (_1!3315 (_ BitVec 64)) (_2!3315 V!14435)) )
))
(declare-datatypes ((List!6564 0))(
  ( (Nil!6561) (Cons!6560 (h!7416 tuple2!6610) (t!11746 List!6564)) )
))
(declare-datatypes ((ListLongMap!5537 0))(
  ( (ListLongMap!5538 (toList!2784 List!6564)) )
))
(declare-fun call!28006 () ListLongMap!5537)

(declare-fun b!399197 () Bool)

(declare-fun e!241107 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!14435)

(declare-fun call!28007 () ListLongMap!5537)

(declare-fun +!1076 (ListLongMap!5537 tuple2!6610) ListLongMap!5537)

(assert (=> b!399197 (= e!241107 (= call!28006 (+!1076 call!28007 (tuple2!6611 k!794 v!412))))))

(declare-fun mapIsEmpty!16617 () Bool)

(declare-fun mapRes!16617 () Bool)

(assert (=> mapIsEmpty!16617 mapRes!16617))

(declare-fun bm!28003 () Bool)

(declare-fun minValue!515 () V!14435)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4655 0))(
  ( (ValueCellFull!4655 (v!7286 V!14435)) (EmptyCell!4655) )
))
(declare-datatypes ((array!23873 0))(
  ( (array!23874 (arr!11383 (Array (_ BitVec 32) ValueCell!4655)) (size!11735 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23873)

(declare-fun zeroValue!515 () V!14435)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!23875 0))(
  ( (array!23876 (arr!11384 (Array (_ BitVec 32) (_ BitVec 64))) (size!11736 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23875)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!187533 () array!23875)

(declare-fun c!54554 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1000 (array!23875 array!23873 (_ BitVec 32) (_ BitVec 32) V!14435 V!14435 (_ BitVec 32) Int) ListLongMap!5537)

(assert (=> bm!28003 (= call!28006 (getCurrentListMapNoExtraKeys!1000 (ite c!54554 lt!187533 _keys!709) (ite c!54554 (array!23874 (store (arr!11383 _values!549) i!563 (ValueCellFull!4655 v!412)) (size!11735 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399199 () Bool)

(declare-fun res!229599 () Bool)

(declare-fun e!241106 () Bool)

(assert (=> b!399199 (=> (not res!229599) (not e!241106))))

(assert (=> b!399199 (= res!229599 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11736 _keys!709))))))

(declare-fun b!399200 () Bool)

(declare-fun res!229600 () Bool)

(assert (=> b!399200 (=> (not res!229600) (not e!241106))))

(assert (=> b!399200 (= res!229600 (and (= (size!11735 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11736 _keys!709) (size!11735 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!399201 () Bool)

(declare-fun res!229604 () Bool)

(assert (=> b!399201 (=> (not res!229604) (not e!241106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399201 (= res!229604 (validKeyInArray!0 k!794))))

(declare-fun b!399202 () Bool)

(assert (=> b!399202 (= e!241107 (= call!28007 call!28006))))

(declare-fun b!399203 () Bool)

(declare-fun res!229603 () Bool)

(assert (=> b!399203 (=> (not res!229603) (not e!241106))))

(assert (=> b!399203 (= res!229603 (or (= (select (arr!11384 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11384 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!399204 () Bool)

(declare-fun e!241103 () Bool)

(assert (=> b!399204 (= e!241103 tp_is_empty!9997)))

(declare-fun b!399205 () Bool)

(declare-fun res!229601 () Bool)

(assert (=> b!399205 (=> (not res!229601) (not e!241106))))

(declare-datatypes ((List!6565 0))(
  ( (Nil!6562) (Cons!6561 (h!7417 (_ BitVec 64)) (t!11747 List!6565)) )
))
(declare-fun arrayNoDuplicates!0 (array!23875 (_ BitVec 32) List!6565) Bool)

(assert (=> b!399205 (= res!229601 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6562))))

(declare-fun b!399206 () Bool)

(declare-fun res!229605 () Bool)

(assert (=> b!399206 (=> (not res!229605) (not e!241106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23875 (_ BitVec 32)) Bool)

(assert (=> b!399206 (= res!229605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399198 () Bool)

(declare-fun e!241105 () Bool)

(assert (=> b!399198 (= e!241105 (and e!241103 mapRes!16617))))

(declare-fun condMapEmpty!16617 () Bool)

(declare-fun mapDefault!16617 () ValueCell!4655)

