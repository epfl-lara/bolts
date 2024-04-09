; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40496 () Bool)

(assert start!40496)

(declare-fun b_free!10559 () Bool)

(declare-fun b_next!10559 () Bool)

(assert (=> start!40496 (= b_free!10559 (not b_next!10559))))

(declare-fun tp!37454 () Bool)

(declare-fun b_and!18561 () Bool)

(assert (=> start!40496 (= tp!37454 b_and!18561)))

(declare-fun b!445816 () Bool)

(declare-fun res!264667 () Bool)

(declare-fun e!261963 () Bool)

(assert (=> b!445816 (=> (not res!264667) (not e!261963))))

(declare-datatypes ((array!27513 0))(
  ( (array!27514 (arr!13201 (Array (_ BitVec 32) (_ BitVec 64))) (size!13553 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27513)

(declare-datatypes ((List!7880 0))(
  ( (Nil!7877) (Cons!7876 (h!8732 (_ BitVec 64)) (t!13646 List!7880)) )
))
(declare-fun arrayNoDuplicates!0 (array!27513 (_ BitVec 32) List!7880) Bool)

(assert (=> b!445816 (= res!264667 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7877))))

(declare-fun b!445817 () Bool)

(declare-fun res!264672 () Bool)

(assert (=> b!445817 (=> (not res!264672) (not e!261963))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16935 0))(
  ( (V!16936 (val!5981 Int)) )
))
(declare-datatypes ((ValueCell!5593 0))(
  ( (ValueCellFull!5593 (v!8228 V!16935)) (EmptyCell!5593) )
))
(declare-datatypes ((array!27515 0))(
  ( (array!27516 (arr!13202 (Array (_ BitVec 32) ValueCell!5593)) (size!13554 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27515)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!445817 (= res!264672 (and (= (size!13554 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13553 _keys!709) (size!13554 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445818 () Bool)

(declare-fun res!264676 () Bool)

(assert (=> b!445818 (=> (not res!264676) (not e!261963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!445818 (= res!264676 (validMask!0 mask!1025))))

(declare-fun b!445819 () Bool)

(declare-fun res!264675 () Bool)

(assert (=> b!445819 (=> (not res!264675) (not e!261963))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!445819 (= res!264675 (or (= (select (arr!13201 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13201 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!445820 () Bool)

(declare-fun e!261958 () Bool)

(declare-fun tp_is_empty!11873 () Bool)

(assert (=> b!445820 (= e!261958 tp_is_empty!11873)))

(declare-fun b!445821 () Bool)

(declare-fun e!261961 () Bool)

(assert (=> b!445821 (= e!261963 e!261961)))

(declare-fun res!264673 () Bool)

(assert (=> b!445821 (=> (not res!264673) (not e!261961))))

(declare-fun lt!203663 () array!27513)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27513 (_ BitVec 32)) Bool)

(assert (=> b!445821 (= res!264673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203663 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!445821 (= lt!203663 (array!27514 (store (arr!13201 _keys!709) i!563 k!794) (size!13553 _keys!709)))))

(declare-fun b!445822 () Bool)

(declare-fun e!261959 () Bool)

(declare-datatypes ((tuple2!7780 0))(
  ( (tuple2!7781 (_1!3900 (_ BitVec 64)) (_2!3900 V!16935)) )
))
(declare-datatypes ((List!7881 0))(
  ( (Nil!7878) (Cons!7877 (h!8733 tuple2!7780) (t!13647 List!7881)) )
))
(declare-datatypes ((ListLongMap!6707 0))(
  ( (ListLongMap!6708 (toList!3369 List!7881)) )
))
(declare-fun call!29630 () ListLongMap!6707)

(declare-fun call!29631 () ListLongMap!6707)

(assert (=> b!445822 (= e!261959 (= call!29630 call!29631))))

(declare-fun b!445824 () Bool)

(declare-fun res!264668 () Bool)

(assert (=> b!445824 (=> (not res!264668) (not e!261961))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!445824 (= res!264668 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13553 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19437 () Bool)

(declare-fun mapRes!19437 () Bool)

(assert (=> mapIsEmpty!19437 mapRes!19437))

(declare-fun b!445825 () Bool)

(declare-fun v!412 () V!16935)

(declare-fun +!1499 (ListLongMap!6707 tuple2!7780) ListLongMap!6707)

(assert (=> b!445825 (= e!261959 (= call!29631 (+!1499 call!29630 (tuple2!7781 k!794 v!412))))))

(declare-fun b!445826 () Bool)

(declare-fun res!264669 () Bool)

(assert (=> b!445826 (=> (not res!264669) (not e!261963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445826 (= res!264669 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!19437 () Bool)

(declare-fun tp!37455 () Bool)

(assert (=> mapNonEmpty!19437 (= mapRes!19437 (and tp!37455 e!261958))))

(declare-fun mapValue!19437 () ValueCell!5593)

(declare-fun mapRest!19437 () (Array (_ BitVec 32) ValueCell!5593))

(declare-fun mapKey!19437 () (_ BitVec 32))

(assert (=> mapNonEmpty!19437 (= (arr!13202 _values!549) (store mapRest!19437 mapKey!19437 mapValue!19437))))

(declare-fun b!445827 () Bool)

(declare-fun e!261957 () Bool)

(declare-fun e!261962 () Bool)

(assert (=> b!445827 (= e!261957 (and e!261962 mapRes!19437))))

(declare-fun condMapEmpty!19437 () Bool)

(declare-fun mapDefault!19437 () ValueCell!5593)

