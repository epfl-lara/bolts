; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83488 () Bool)

(assert start!83488)

(declare-fun b_free!19447 () Bool)

(declare-fun b_next!19447 () Bool)

(assert (=> start!83488 (= b_free!19447 (not b_next!19447))))

(declare-fun tp!67629 () Bool)

(declare-fun b_and!31067 () Bool)

(assert (=> start!83488 (= tp!67629 b_and!31067)))

(declare-fun b!974707 () Bool)

(declare-fun e!549406 () Bool)

(assert (=> b!974707 (= e!549406 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34785 0))(
  ( (V!34786 (val!11226 Int)) )
))
(declare-datatypes ((ValueCell!10694 0))(
  ( (ValueCellFull!10694 (v!13785 V!34785)) (EmptyCell!10694) )
))
(declare-datatypes ((array!60719 0))(
  ( (array!60720 (arr!29219 (Array (_ BitVec 32) ValueCell!10694)) (size!29699 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60719)

(declare-datatypes ((tuple2!14524 0))(
  ( (tuple2!14525 (_1!7272 (_ BitVec 64)) (_2!7272 V!34785)) )
))
(declare-datatypes ((List!20400 0))(
  ( (Nil!20397) (Cons!20396 (h!21558 tuple2!14524) (t!28885 List!20400)) )
))
(declare-datatypes ((ListLongMap!13235 0))(
  ( (ListLongMap!13236 (toList!6633 List!20400)) )
))
(declare-fun lt!432751 () ListLongMap!13235)

(declare-fun zeroValue!1367 () V!34785)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34785)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60721 0))(
  ( (array!60722 (arr!29220 (Array (_ BitVec 32) (_ BitVec 64))) (size!29700 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60721)

(declare-fun getCurrentListMap!3818 (array!60721 array!60719 (_ BitVec 32) (_ BitVec 32) V!34785 V!34785 (_ BitVec 32) Int) ListLongMap!13235)

(assert (=> b!974707 (= lt!432751 (getCurrentListMap!3818 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35536 () Bool)

(declare-fun mapRes!35536 () Bool)

(declare-fun tp!67630 () Bool)

(declare-fun e!549407 () Bool)

(assert (=> mapNonEmpty!35536 (= mapRes!35536 (and tp!67630 e!549407))))

(declare-fun mapKey!35536 () (_ BitVec 32))

(declare-fun mapValue!35536 () ValueCell!10694)

(declare-fun mapRest!35536 () (Array (_ BitVec 32) ValueCell!10694))

(assert (=> mapNonEmpty!35536 (= (arr!29219 _values!1425) (store mapRest!35536 mapKey!35536 mapValue!35536))))

(declare-fun b!974708 () Bool)

(declare-fun res!652588 () Bool)

(assert (=> b!974708 (=> (not res!652588) (not e!549406))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!974708 (= res!652588 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29700 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29700 _keys!1717))))))

(declare-fun b!974710 () Bool)

(declare-fun res!652585 () Bool)

(assert (=> b!974710 (=> (not res!652585) (not e!549406))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974710 (= res!652585 (validKeyInArray!0 (select (arr!29220 _keys!1717) i!822)))))

(declare-fun b!974711 () Bool)

(declare-fun tp_is_empty!22351 () Bool)

(assert (=> b!974711 (= e!549407 tp_is_empty!22351)))

(declare-fun b!974712 () Bool)

(declare-fun res!652591 () Bool)

(assert (=> b!974712 (=> (not res!652591) (not e!549406))))

(declare-datatypes ((List!20401 0))(
  ( (Nil!20398) (Cons!20397 (h!21559 (_ BitVec 64)) (t!28886 List!20401)) )
))
(declare-fun arrayNoDuplicates!0 (array!60721 (_ BitVec 32) List!20401) Bool)

(assert (=> b!974712 (= res!652591 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20398))))

(declare-fun b!974713 () Bool)

(declare-fun e!549404 () Bool)

(declare-fun e!549408 () Bool)

(assert (=> b!974713 (= e!549404 (and e!549408 mapRes!35536))))

(declare-fun condMapEmpty!35536 () Bool)

(declare-fun mapDefault!35536 () ValueCell!10694)

