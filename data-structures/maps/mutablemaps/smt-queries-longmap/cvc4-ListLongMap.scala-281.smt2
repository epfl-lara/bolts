; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4576 () Bool)

(assert start!4576)

(declare-fun b_free!1277 () Bool)

(declare-fun b_next!1277 () Bool)

(assert (=> start!4576 (= b_free!1277 (not b_next!1277))))

(declare-fun tp!5278 () Bool)

(declare-fun b_and!2107 () Bool)

(assert (=> start!4576 (= tp!5278 b_and!2107)))

(declare-fun b!35831 () Bool)

(declare-fun e!22640 () Bool)

(declare-fun tp_is_empty!1631 () Bool)

(assert (=> b!35831 (= e!22640 tp_is_empty!1631)))

(declare-fun b!35832 () Bool)

(declare-fun e!22641 () Bool)

(declare-fun e!22642 () Bool)

(assert (=> b!35832 (= e!22641 e!22642)))

(declare-fun res!21724 () Bool)

(assert (=> b!35832 (=> (not res!21724) (not e!22642))))

(declare-datatypes ((SeekEntryResult!173 0))(
  ( (MissingZero!173 (index!2814 (_ BitVec 32))) (Found!173 (index!2815 (_ BitVec 32))) (Intermediate!173 (undefined!985 Bool) (index!2816 (_ BitVec 32)) (x!7053 (_ BitVec 32))) (Undefined!173) (MissingVacant!173 (index!2817 (_ BitVec 32))) )
))
(declare-fun lt!13223 () SeekEntryResult!173)

(assert (=> b!35832 (= res!21724 (is-Found!173 lt!13223))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((array!2473 0))(
  ( (array!2474 (arr!1181 (Array (_ BitVec 32) (_ BitVec 64))) (size!1282 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2473)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2473 (_ BitVec 32)) SeekEntryResult!173)

(assert (=> b!35832 (= lt!13223 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!35833 () Bool)

(declare-fun res!21731 () Bool)

(declare-fun e!22638 () Bool)

(assert (=> b!35833 (=> (not res!21731) (not e!22638))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35833 (= res!21731 (validKeyInArray!0 k!1304))))

(declare-fun b!35834 () Bool)

(declare-fun res!21729 () Bool)

(assert (=> b!35834 (=> (not res!21729) (not e!22638))))

(declare-datatypes ((V!1999 0))(
  ( (V!2000 (val!842 Int)) )
))
(declare-datatypes ((ValueCell!616 0))(
  ( (ValueCellFull!616 (v!1940 V!1999)) (EmptyCell!616) )
))
(declare-datatypes ((array!2475 0))(
  ( (array!2476 (arr!1182 (Array (_ BitVec 32) ValueCell!616)) (size!1283 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2475)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!35834 (= res!21729 (and (= (size!1283 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1282 _keys!1833) (size!1283 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!35836 () Bool)

(declare-fun res!21728 () Bool)

(assert (=> b!35836 (=> (not res!21728) (not e!22638))))

(declare-datatypes ((List!957 0))(
  ( (Nil!954) (Cons!953 (h!1520 (_ BitVec 64)) (t!3670 List!957)) )
))
(declare-fun arrayNoDuplicates!0 (array!2473 (_ BitVec 32) List!957) Bool)

(assert (=> b!35836 (= res!21728 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!954))))

(declare-fun b!35837 () Bool)

(assert (=> b!35837 (= e!22638 e!22641)))

(declare-fun res!21727 () Bool)

(assert (=> b!35837 (=> (not res!21727) (not e!22641))))

(declare-datatypes ((tuple2!1350 0))(
  ( (tuple2!1351 (_1!685 (_ BitVec 64)) (_2!685 V!1999)) )
))
(declare-datatypes ((List!958 0))(
  ( (Nil!955) (Cons!954 (h!1521 tuple2!1350) (t!3671 List!958)) )
))
(declare-datatypes ((ListLongMap!931 0))(
  ( (ListLongMap!932 (toList!481 List!958)) )
))
(declare-fun lt!13222 () ListLongMap!931)

(declare-fun contains!427 (ListLongMap!931 (_ BitVec 64)) Bool)

(assert (=> b!35837 (= res!21727 (not (contains!427 lt!13222 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1999)

(declare-fun minValue!1443 () V!1999)

(declare-fun getCurrentListMap!302 (array!2473 array!2475 (_ BitVec 32) (_ BitVec 32) V!1999 V!1999 (_ BitVec 32) Int) ListLongMap!931)

(assert (=> b!35837 (= lt!13222 (getCurrentListMap!302 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!35838 () Bool)

(declare-fun e!22643 () Bool)

(declare-fun e!22637 () Bool)

(declare-fun mapRes!2002 () Bool)

(assert (=> b!35838 (= e!22643 (and e!22637 mapRes!2002))))

(declare-fun condMapEmpty!2002 () Bool)

(declare-fun mapDefault!2002 () ValueCell!616)

