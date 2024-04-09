; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82826 () Bool)

(assert start!82826)

(declare-fun b_free!18925 () Bool)

(declare-fun b_next!18925 () Bool)

(assert (=> start!82826 (= b_free!18925 (not b_next!18925))))

(declare-fun tp!65905 () Bool)

(declare-fun b_and!30431 () Bool)

(assert (=> start!82826 (= tp!65905 b_and!30431)))

(declare-fun mapNonEmpty!34594 () Bool)

(declare-fun mapRes!34594 () Bool)

(declare-fun tp!65904 () Bool)

(declare-fun e!544397 () Bool)

(assert (=> mapNonEmpty!34594 (= mapRes!34594 (and tp!65904 e!544397))))

(declare-datatypes ((V!33961 0))(
  ( (V!33962 (val!10917 Int)) )
))
(declare-datatypes ((ValueCell!10385 0))(
  ( (ValueCellFull!10385 (v!13475 V!33961)) (EmptyCell!10385) )
))
(declare-fun mapRest!34594 () (Array (_ BitVec 32) ValueCell!10385))

(declare-fun mapKey!34594 () (_ BitVec 32))

(declare-fun mapValue!34594 () ValueCell!10385)

(declare-datatypes ((array!59531 0))(
  ( (array!59532 (arr!28630 (Array (_ BitVec 32) ValueCell!10385)) (size!29110 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59531)

(assert (=> mapNonEmpty!34594 (= (arr!28630 _values!1400) (store mapRest!34594 mapKey!34594 mapValue!34594))))

(declare-fun res!646493 () Bool)

(declare-fun e!544395 () Bool)

(assert (=> start!82826 (=> (not res!646493) (not e!544395))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82826 (= res!646493 (validMask!0 mask!2110))))

(assert (=> start!82826 e!544395))

(assert (=> start!82826 true))

(declare-fun e!544398 () Bool)

(declare-fun array_inv!22079 (array!59531) Bool)

(assert (=> start!82826 (and (array_inv!22079 _values!1400) e!544398)))

(declare-datatypes ((array!59533 0))(
  ( (array!59534 (arr!28631 (Array (_ BitVec 32) (_ BitVec 64))) (size!29111 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59533)

(declare-fun array_inv!22080 (array!59533) Bool)

(assert (=> start!82826 (array_inv!22080 _keys!1686)))

(assert (=> start!82826 tp!65905))

(declare-fun tp_is_empty!21733 () Bool)

(assert (=> start!82826 tp_is_empty!21733))

(declare-fun mapIsEmpty!34594 () Bool)

(assert (=> mapIsEmpty!34594 mapRes!34594))

(declare-fun b!965654 () Bool)

(declare-fun e!544396 () Bool)

(assert (=> b!965654 (= e!544396 tp_is_empty!21733)))

(declare-fun b!965655 () Bool)

(declare-fun res!646491 () Bool)

(assert (=> b!965655 (=> (not res!646491) (not e!544395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59533 (_ BitVec 32)) Bool)

(assert (=> b!965655 (= res!646491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965656 () Bool)

(assert (=> b!965656 (= e!544397 tp_is_empty!21733)))

(declare-fun b!965657 () Bool)

(declare-fun res!646492 () Bool)

(assert (=> b!965657 (=> (not res!646492) (not e!544395))))

(declare-datatypes ((List!19996 0))(
  ( (Nil!19993) (Cons!19992 (h!21154 (_ BitVec 64)) (t!28367 List!19996)) )
))
(declare-fun arrayNoDuplicates!0 (array!59533 (_ BitVec 32) List!19996) Bool)

(assert (=> b!965657 (= res!646492 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19993))))

(declare-fun b!965658 () Bool)

(assert (=> b!965658 (= e!544398 (and e!544396 mapRes!34594))))

(declare-fun condMapEmpty!34594 () Bool)

(declare-fun mapDefault!34594 () ValueCell!10385)

