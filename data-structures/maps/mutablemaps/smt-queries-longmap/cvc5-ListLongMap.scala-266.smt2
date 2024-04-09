; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4366 () Bool)

(assert start!4366)

(declare-fun b_free!1183 () Bool)

(declare-fun b_next!1183 () Bool)

(assert (=> start!4366 (= b_free!1183 (not b_next!1183))))

(declare-fun tp!4980 () Bool)

(declare-fun b_and!2003 () Bool)

(assert (=> start!4366 (= tp!4980 b_and!2003)))

(declare-fun res!20445 () Bool)

(declare-fun e!21396 () Bool)

(assert (=> start!4366 (=> (not res!20445) (not e!21396))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4366 (= res!20445 (validMask!0 mask!2294))))

(assert (=> start!4366 e!21396))

(assert (=> start!4366 true))

(assert (=> start!4366 tp!4980))

(declare-datatypes ((V!1875 0))(
  ( (V!1876 (val!795 Int)) )
))
(declare-datatypes ((ValueCell!569 0))(
  ( (ValueCellFull!569 (v!1888 V!1875)) (EmptyCell!569) )
))
(declare-datatypes ((array!2281 0))(
  ( (array!2282 (arr!1090 (Array (_ BitVec 32) ValueCell!569)) (size!1191 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2281)

(declare-fun e!21399 () Bool)

(declare-fun array_inv!727 (array!2281) Bool)

(assert (=> start!4366 (and (array_inv!727 _values!1501) e!21399)))

(declare-datatypes ((array!2283 0))(
  ( (array!2284 (arr!1091 (Array (_ BitVec 32) (_ BitVec 64))) (size!1192 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2283)

(declare-fun array_inv!728 (array!2283) Bool)

(assert (=> start!4366 (array_inv!728 _keys!1833)))

(declare-fun tp_is_empty!1537 () Bool)

(assert (=> start!4366 tp_is_empty!1537))

(declare-fun b!33696 () Bool)

(declare-fun e!21401 () Bool)

(assert (=> b!33696 (= e!21401 tp_is_empty!1537)))

(declare-fun mapNonEmpty!1846 () Bool)

(declare-fun mapRes!1846 () Bool)

(declare-fun tp!4981 () Bool)

(declare-fun e!21397 () Bool)

(assert (=> mapNonEmpty!1846 (= mapRes!1846 (and tp!4981 e!21397))))

(declare-fun mapRest!1846 () (Array (_ BitVec 32) ValueCell!569))

(declare-fun mapKey!1846 () (_ BitVec 32))

(declare-fun mapValue!1846 () ValueCell!569)

(assert (=> mapNonEmpty!1846 (= (arr!1090 _values!1501) (store mapRest!1846 mapKey!1846 mapValue!1846))))

(declare-fun b!33697 () Bool)

(declare-fun res!20446 () Bool)

(assert (=> b!33697 (=> (not res!20446) (not e!21396))))

(declare-datatypes ((List!886 0))(
  ( (Nil!883) (Cons!882 (h!1449 (_ BitVec 64)) (t!3589 List!886)) )
))
(declare-fun arrayNoDuplicates!0 (array!2283 (_ BitVec 32) List!886) Bool)

(assert (=> b!33697 (= res!20446 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!883))))

(declare-fun b!33698 () Bool)

(assert (=> b!33698 (= e!21397 tp_is_empty!1537)))

(declare-fun b!33699 () Bool)

(assert (=> b!33699 (= e!21399 (and e!21401 mapRes!1846))))

(declare-fun condMapEmpty!1846 () Bool)

(declare-fun mapDefault!1846 () ValueCell!569)

