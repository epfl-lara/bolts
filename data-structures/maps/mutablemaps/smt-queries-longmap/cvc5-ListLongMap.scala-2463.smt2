; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38604 () Bool)

(assert start!38604)

(declare-fun b_free!9133 () Bool)

(declare-fun b_next!9133 () Bool)

(assert (=> start!38604 (= b_free!9133 (not b_next!9133))))

(declare-fun tp!32522 () Bool)

(declare-fun b_and!16537 () Bool)

(assert (=> start!38604 (= tp!32522 b_and!16537)))

(declare-fun mapIsEmpty!16644 () Bool)

(declare-fun mapRes!16644 () Bool)

(assert (=> mapIsEmpty!16644 mapRes!16644))

(declare-fun b!399655 () Bool)

(declare-fun res!229921 () Bool)

(declare-fun e!241294 () Bool)

(assert (=> b!399655 (=> (not res!229921) (not e!241294))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!23909 0))(
  ( (array!23910 (arr!11401 (Array (_ BitVec 32) (_ BitVec 64))) (size!11753 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23909)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!399655 (= res!229921 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11753 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!14459 0))(
  ( (V!14460 (val!5052 Int)) )
))
(declare-fun minValue!515 () V!14459)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28057 () Bool)

(declare-datatypes ((ValueCell!4664 0))(
  ( (ValueCellFull!4664 (v!7295 V!14459)) (EmptyCell!4664) )
))
(declare-datatypes ((array!23911 0))(
  ( (array!23912 (arr!11402 (Array (_ BitVec 32) ValueCell!4664)) (size!11754 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23911)

(declare-fun c!54581 () Bool)

(declare-fun zeroValue!515 () V!14459)

(declare-fun lt!187586 () array!23909)

(declare-fun v!412 () V!14459)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!6626 0))(
  ( (tuple2!6627 (_1!3323 (_ BitVec 64)) (_2!3323 V!14459)) )
))
(declare-datatypes ((List!6580 0))(
  ( (Nil!6577) (Cons!6576 (h!7432 tuple2!6626) (t!11762 List!6580)) )
))
(declare-datatypes ((ListLongMap!5553 0))(
  ( (ListLongMap!5554 (toList!2792 List!6580)) )
))
(declare-fun call!28061 () ListLongMap!5553)

(declare-fun getCurrentListMapNoExtraKeys!1008 (array!23909 array!23911 (_ BitVec 32) (_ BitVec 32) V!14459 V!14459 (_ BitVec 32) Int) ListLongMap!5553)

(assert (=> bm!28057 (= call!28061 (getCurrentListMapNoExtraKeys!1008 (ite c!54581 lt!187586 _keys!709) (ite c!54581 (array!23912 (store (arr!11402 _values!549) i!563 (ValueCellFull!4664 v!412)) (size!11754 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399657 () Bool)

(declare-fun res!229929 () Bool)

(declare-fun e!241297 () Bool)

(assert (=> b!399657 (=> (not res!229929) (not e!241297))))

(assert (=> b!399657 (= res!229929 (and (= (size!11754 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11753 _keys!709) (size!11754 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!399658 () Bool)

(declare-fun e!241292 () Bool)

(declare-fun call!28060 () ListLongMap!5553)

(assert (=> b!399658 (= e!241292 (= call!28060 call!28061))))

(declare-fun mapNonEmpty!16644 () Bool)

(declare-fun tp!32523 () Bool)

(declare-fun e!241296 () Bool)

(assert (=> mapNonEmpty!16644 (= mapRes!16644 (and tp!32523 e!241296))))

(declare-fun mapRest!16644 () (Array (_ BitVec 32) ValueCell!4664))

(declare-fun mapValue!16644 () ValueCell!4664)

(declare-fun mapKey!16644 () (_ BitVec 32))

(assert (=> mapNonEmpty!16644 (= (arr!11402 _values!549) (store mapRest!16644 mapKey!16644 mapValue!16644))))

(declare-fun b!399659 () Bool)

(declare-fun res!229931 () Bool)

(assert (=> b!399659 (=> (not res!229931) (not e!241294))))

(declare-datatypes ((List!6581 0))(
  ( (Nil!6578) (Cons!6577 (h!7433 (_ BitVec 64)) (t!11763 List!6581)) )
))
(declare-fun arrayNoDuplicates!0 (array!23909 (_ BitVec 32) List!6581) Bool)

(assert (=> b!399659 (= res!229931 (arrayNoDuplicates!0 lt!187586 #b00000000000000000000000000000000 Nil!6578))))

(declare-fun b!399660 () Bool)

(declare-fun res!229926 () Bool)

(assert (=> b!399660 (=> (not res!229926) (not e!241297))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399660 (= res!229926 (validKeyInArray!0 k!794))))

(declare-fun b!399661 () Bool)

(assert (=> b!399661 (= e!241297 e!241294)))

(declare-fun res!229922 () Bool)

(assert (=> b!399661 (=> (not res!229922) (not e!241294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23909 (_ BitVec 32)) Bool)

(assert (=> b!399661 (= res!229922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187586 mask!1025))))

(assert (=> b!399661 (= lt!187586 (array!23910 (store (arr!11401 _keys!709) i!563 k!794) (size!11753 _keys!709)))))

(declare-fun b!399662 () Bool)

(declare-fun res!229923 () Bool)

(assert (=> b!399662 (=> (not res!229923) (not e!241297))))

(assert (=> b!399662 (= res!229923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399663 () Bool)

(declare-fun e!241295 () Bool)

(declare-fun tp_is_empty!10015 () Bool)

(assert (=> b!399663 (= e!241295 tp_is_empty!10015)))

(declare-fun bm!28058 () Bool)

(assert (=> bm!28058 (= call!28060 (getCurrentListMapNoExtraKeys!1008 (ite c!54581 _keys!709 lt!187586) (ite c!54581 _values!549 (array!23912 (store (arr!11402 _values!549) i!563 (ValueCellFull!4664 v!412)) (size!11754 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399656 () Bool)

(declare-fun res!229927 () Bool)

(assert (=> b!399656 (=> (not res!229927) (not e!241297))))

(assert (=> b!399656 (= res!229927 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6578))))

(declare-fun res!229930 () Bool)

(assert (=> start!38604 (=> (not res!229930) (not e!241297))))

(assert (=> start!38604 (= res!229930 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11753 _keys!709))))))

(assert (=> start!38604 e!241297))

(assert (=> start!38604 tp_is_empty!10015))

(assert (=> start!38604 tp!32522))

(assert (=> start!38604 true))

(declare-fun e!241293 () Bool)

(declare-fun array_inv!8342 (array!23911) Bool)

(assert (=> start!38604 (and (array_inv!8342 _values!549) e!241293)))

(declare-fun array_inv!8343 (array!23909) Bool)

(assert (=> start!38604 (array_inv!8343 _keys!709)))

(declare-fun b!399664 () Bool)

(declare-fun res!229928 () Bool)

(assert (=> b!399664 (=> (not res!229928) (not e!241297))))

(assert (=> b!399664 (= res!229928 (or (= (select (arr!11401 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11401 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!399665 () Bool)

(declare-fun res!229932 () Bool)

(assert (=> b!399665 (=> (not res!229932) (not e!241297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399665 (= res!229932 (validMask!0 mask!1025))))

(declare-fun b!399666 () Bool)

(assert (=> b!399666 (= e!241296 tp_is_empty!10015)))

(declare-fun b!399667 () Bool)

(declare-fun +!1083 (ListLongMap!5553 tuple2!6626) ListLongMap!5553)

(assert (=> b!399667 (= e!241292 (= call!28061 (+!1083 call!28060 (tuple2!6627 k!794 v!412))))))

(declare-fun b!399668 () Bool)

(assert (=> b!399668 (= e!241293 (and e!241295 mapRes!16644))))

(declare-fun condMapEmpty!16644 () Bool)

(declare-fun mapDefault!16644 () ValueCell!4664)

