; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40548 () Bool)

(assert start!40548)

(declare-fun b_free!10567 () Bool)

(declare-fun b_next!10567 () Bool)

(assert (=> start!40548 (= b_free!10567 (not b_next!10567))))

(declare-fun tp!37517 () Bool)

(declare-fun b_and!18585 () Bool)

(assert (=> start!40548 (= tp!37517 b_and!18585)))

(declare-fun b!446632 () Bool)

(declare-fun res!265248 () Bool)

(declare-fun e!262349 () Bool)

(assert (=> b!446632 (=> (not res!265248) (not e!262349))))

(declare-datatypes ((array!27577 0))(
  ( (array!27578 (arr!13232 (Array (_ BitVec 32) (_ BitVec 64))) (size!13584 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27577)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16979 0))(
  ( (V!16980 (val!5997 Int)) )
))
(declare-datatypes ((ValueCell!5609 0))(
  ( (ValueCellFull!5609 (v!8248 V!16979)) (EmptyCell!5609) )
))
(declare-datatypes ((array!27579 0))(
  ( (array!27580 (arr!13233 (Array (_ BitVec 32) ValueCell!5609)) (size!13585 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27579)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!446632 (= res!265248 (and (= (size!13585 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13584 _keys!709) (size!13585 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19488 () Bool)

(declare-fun mapRes!19488 () Bool)

(assert (=> mapIsEmpty!19488 mapRes!19488))

(declare-fun b!446633 () Bool)

(declare-fun res!265242 () Bool)

(assert (=> b!446633 (=> (not res!265242) (not e!262349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446633 (= res!265242 (validMask!0 mask!1025))))

(declare-fun minValue!515 () V!16979)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16979)

(declare-fun b!446634 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!203817 () array!27577)

(declare-fun e!262348 () Bool)

(declare-fun v!412 () V!16979)

(declare-datatypes ((tuple2!7786 0))(
  ( (tuple2!7787 (_1!3903 (_ BitVec 64)) (_2!3903 V!16979)) )
))
(declare-datatypes ((List!7897 0))(
  ( (Nil!7894) (Cons!7893 (h!8749 tuple2!7786) (t!13665 List!7897)) )
))
(declare-datatypes ((ListLongMap!6713 0))(
  ( (ListLongMap!6714 (toList!3372 List!7897)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1552 (array!27577 array!27579 (_ BitVec 32) (_ BitVec 32) V!16979 V!16979 (_ BitVec 32) Int) ListLongMap!6713)

(assert (=> b!446634 (= e!262348 (not (= (getCurrentListMapNoExtraKeys!1552 lt!203817 (array!27580 (store (arr!13233 _values!549) i!563 (ValueCellFull!5609 v!412)) (size!13585 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) (getCurrentListMapNoExtraKeys!1552 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))))

(declare-fun b!446635 () Bool)

(declare-fun e!262350 () Bool)

(declare-fun tp_is_empty!11905 () Bool)

(assert (=> b!446635 (= e!262350 tp_is_empty!11905)))

(declare-fun b!446636 () Bool)

(declare-fun res!265241 () Bool)

(assert (=> b!446636 (=> (not res!265241) (not e!262349))))

(assert (=> b!446636 (= res!265241 (or (= (select (arr!13232 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13232 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19488 () Bool)

(declare-fun tp!37518 () Bool)

(assert (=> mapNonEmpty!19488 (= mapRes!19488 (and tp!37518 e!262350))))

(declare-fun mapRest!19488 () (Array (_ BitVec 32) ValueCell!5609))

(declare-fun mapKey!19488 () (_ BitVec 32))

(declare-fun mapValue!19488 () ValueCell!5609)

(assert (=> mapNonEmpty!19488 (= (arr!13233 _values!549) (store mapRest!19488 mapKey!19488 mapValue!19488))))

(declare-fun b!446638 () Bool)

(assert (=> b!446638 (= e!262349 e!262348)))

(declare-fun res!265246 () Bool)

(assert (=> b!446638 (=> (not res!265246) (not e!262348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27577 (_ BitVec 32)) Bool)

(assert (=> b!446638 (= res!265246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203817 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!446638 (= lt!203817 (array!27578 (store (arr!13232 _keys!709) i!563 k!794) (size!13584 _keys!709)))))

(declare-fun b!446639 () Bool)

(declare-fun res!265247 () Bool)

(assert (=> b!446639 (=> (not res!265247) (not e!262349))))

(declare-datatypes ((List!7898 0))(
  ( (Nil!7895) (Cons!7894 (h!8750 (_ BitVec 64)) (t!13666 List!7898)) )
))
(declare-fun arrayNoDuplicates!0 (array!27577 (_ BitVec 32) List!7898) Bool)

(assert (=> b!446639 (= res!265247 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7895))))

(declare-fun b!446640 () Bool)

(declare-fun e!262346 () Bool)

(declare-fun e!262347 () Bool)

(assert (=> b!446640 (= e!262346 (and e!262347 mapRes!19488))))

(declare-fun condMapEmpty!19488 () Bool)

(declare-fun mapDefault!19488 () ValueCell!5609)

