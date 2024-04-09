; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83356 () Bool)

(assert start!83356)

(declare-fun b_free!19321 () Bool)

(declare-fun b_next!19321 () Bool)

(assert (=> start!83356 (= b_free!19321 (not b_next!19321))))

(declare-fun tp!67242 () Bool)

(declare-fun b_and!30881 () Bool)

(assert (=> start!83356 (= tp!67242 b_and!30881)))

(declare-fun b!972606 () Bool)

(declare-fun res!651145 () Bool)

(declare-fun e!548239 () Bool)

(assert (=> b!972606 (=> (not res!651145) (not e!548239))))

(declare-datatypes ((array!60465 0))(
  ( (array!60466 (arr!29092 (Array (_ BitVec 32) (_ BitVec 64))) (size!29572 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60465)

(declare-datatypes ((List!20304 0))(
  ( (Nil!20301) (Cons!20300 (h!21462 (_ BitVec 64)) (t!28731 List!20304)) )
))
(declare-fun arrayNoDuplicates!0 (array!60465 (_ BitVec 32) List!20304) Bool)

(assert (=> b!972606 (= res!651145 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20301))))

(declare-fun b!972607 () Bool)

(declare-fun res!651144 () Bool)

(assert (=> b!972607 (=> (not res!651144) (not e!548239))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34609 0))(
  ( (V!34610 (val!11160 Int)) )
))
(declare-datatypes ((ValueCell!10628 0))(
  ( (ValueCellFull!10628 (v!13719 V!34609)) (EmptyCell!10628) )
))
(declare-datatypes ((array!60467 0))(
  ( (array!60468 (arr!29093 (Array (_ BitVec 32) ValueCell!10628)) (size!29573 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60467)

(declare-fun zeroValue!1367 () V!34609)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34609)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun from!2118 () (_ BitVec 32))

(declare-datatypes ((tuple2!14416 0))(
  ( (tuple2!14417 (_1!7218 (_ BitVec 64)) (_2!7218 V!34609)) )
))
(declare-datatypes ((List!20305 0))(
  ( (Nil!20302) (Cons!20301 (h!21463 tuple2!14416) (t!28732 List!20305)) )
))
(declare-datatypes ((ListLongMap!13127 0))(
  ( (ListLongMap!13128 (toList!6579 List!20305)) )
))
(declare-fun contains!5626 (ListLongMap!13127 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3764 (array!60465 array!60467 (_ BitVec 32) (_ BitVec 32) V!34609 V!34609 (_ BitVec 32) Int) ListLongMap!13127)

(assert (=> b!972607 (= res!651144 (contains!5626 (getCurrentListMap!3764 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29092 _keys!1717) i!822)))))

(declare-fun res!651139 () Bool)

(assert (=> start!83356 (=> (not res!651139) (not e!548239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83356 (= res!651139 (validMask!0 mask!2147))))

(assert (=> start!83356 e!548239))

(assert (=> start!83356 true))

(declare-fun e!548238 () Bool)

(declare-fun array_inv!22403 (array!60467) Bool)

(assert (=> start!83356 (and (array_inv!22403 _values!1425) e!548238)))

(declare-fun tp_is_empty!22219 () Bool)

(assert (=> start!83356 tp_is_empty!22219))

(assert (=> start!83356 tp!67242))

(declare-fun array_inv!22404 (array!60465) Bool)

(assert (=> start!83356 (array_inv!22404 _keys!1717)))

(declare-fun b!972608 () Bool)

(declare-fun e!548236 () Bool)

(assert (=> b!972608 (= e!548236 tp_is_empty!22219)))

(declare-fun b!972609 () Bool)

(declare-fun mapRes!35338 () Bool)

(assert (=> b!972609 (= e!548238 (and e!548236 mapRes!35338))))

(declare-fun condMapEmpty!35338 () Bool)

(declare-fun mapDefault!35338 () ValueCell!10628)

