; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!716 () Bool)

(assert start!716)

(declare-fun b_free!149 () Bool)

(declare-fun b_next!149 () Bool)

(assert (=> start!716 (= b_free!149 (not b_next!149))))

(declare-fun tp!671 () Bool)

(declare-fun b_and!291 () Bool)

(assert (=> start!716 (= tp!671 b_and!291)))

(declare-fun b!4924 () Bool)

(declare-fun e!2633 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!4924 (= e!2633 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4925 () Bool)

(declare-fun res!5973 () Bool)

(declare-fun e!2632 () Bool)

(assert (=> b!4925 (=> (not res!5973) (not e!2632))))

(declare-datatypes ((array!387 0))(
  ( (array!388 (arr!184 (Array (_ BitVec 32) (_ BitVec 64))) (size!246 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!387)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!387 (_ BitVec 32)) Bool)

(assert (=> b!4925 (= res!5973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!305 () Bool)

(declare-fun mapRes!305 () Bool)

(assert (=> mapIsEmpty!305 mapRes!305))

(declare-fun b!4926 () Bool)

(declare-fun e!2635 () Bool)

(assert (=> b!4926 (= e!2635 (= (size!246 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250)))))

(declare-fun b!4927 () Bool)

(assert (=> b!4927 (= e!2632 (not e!2635))))

(declare-fun res!5975 () Bool)

(assert (=> b!4927 (=> res!5975 e!2635)))

(declare-fun arrayContainsKey!0 (array!387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4927 (= res!5975 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!4927 e!2633))

(declare-fun c!296 () Bool)

(assert (=> b!4927 (= c!296 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((V!479 0))(
  ( (V!480 (val!119 Int)) )
))
(declare-fun minValue!1434 () V!479)

(declare-fun zeroValue!1434 () V!479)

(declare-datatypes ((Unit!51 0))(
  ( (Unit!52) )
))
(declare-fun lt!804 () Unit!51)

(declare-datatypes ((ValueCell!97 0))(
  ( (ValueCellFull!97 (v!1208 V!479)) (EmptyCell!97) )
))
(declare-datatypes ((array!389 0))(
  ( (array!390 (arr!185 (Array (_ BitVec 32) ValueCell!97)) (size!247 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!389)

(declare-fun lemmaKeyInListMapIsInArray!13 (array!387 array!389 (_ BitVec 32) (_ BitVec 32) V!479 V!479 (_ BitVec 64) Int) Unit!51)

(assert (=> b!4927 (= lt!804 (lemmaKeyInListMapIsInArray!13 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun res!5976 () Bool)

(assert (=> start!716 (=> (not res!5976) (not e!2632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!716 (= res!5976 (validMask!0 mask!2250))))

(assert (=> start!716 e!2632))

(assert (=> start!716 tp!671))

(assert (=> start!716 true))

(declare-fun e!2634 () Bool)

(declare-fun array_inv!129 (array!389) Bool)

(assert (=> start!716 (and (array_inv!129 _values!1492) e!2634)))

(declare-fun tp_is_empty!227 () Bool)

(assert (=> start!716 tp_is_empty!227))

(declare-fun array_inv!130 (array!387) Bool)

(assert (=> start!716 (array_inv!130 _keys!1806)))

(declare-fun b!4928 () Bool)

(declare-fun e!2631 () Bool)

(assert (=> b!4928 (= e!2631 tp_is_empty!227)))

(declare-fun b!4929 () Bool)

(declare-fun res!5971 () Bool)

(assert (=> b!4929 (=> (not res!5971) (not e!2632))))

(assert (=> b!4929 (= res!5971 (and (= (size!247 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!246 _keys!1806) (size!247 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4930 () Bool)

(declare-fun e!2630 () Bool)

(assert (=> b!4930 (= e!2630 tp_is_empty!227)))

(declare-fun b!4931 () Bool)

(assert (=> b!4931 (= e!2634 (and e!2631 mapRes!305))))

(declare-fun condMapEmpty!305 () Bool)

(declare-fun mapDefault!305 () ValueCell!97)

