; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82776 () Bool)

(assert start!82776)

(declare-fun b_free!18881 () Bool)

(declare-fun b_next!18881 () Bool)

(assert (=> start!82776 (= b_free!18881 (not b_next!18881))))

(declare-fun tp!65764 () Bool)

(declare-fun b_and!30387 () Bool)

(assert (=> start!82776 (= tp!65764 b_and!30387)))

(declare-fun b!964988 () Bool)

(declare-fun e!544020 () Bool)

(declare-fun tp_is_empty!21683 () Bool)

(assert (=> b!964988 (= e!544020 tp_is_empty!21683)))

(declare-fun res!646051 () Bool)

(declare-fun e!544021 () Bool)

(assert (=> start!82776 (=> (not res!646051) (not e!544021))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82776 (= res!646051 (validMask!0 mask!2110))))

(assert (=> start!82776 e!544021))

(assert (=> start!82776 true))

(declare-datatypes ((V!33893 0))(
  ( (V!33894 (val!10892 Int)) )
))
(declare-datatypes ((ValueCell!10360 0))(
  ( (ValueCellFull!10360 (v!13450 V!33893)) (EmptyCell!10360) )
))
(declare-datatypes ((array!59433 0))(
  ( (array!59434 (arr!28581 (Array (_ BitVec 32) ValueCell!10360)) (size!29061 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59433)

(declare-fun e!544022 () Bool)

(declare-fun array_inv!22041 (array!59433) Bool)

(assert (=> start!82776 (and (array_inv!22041 _values!1400) e!544022)))

(declare-datatypes ((array!59435 0))(
  ( (array!59436 (arr!28582 (Array (_ BitVec 32) (_ BitVec 64))) (size!29062 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59435)

(declare-fun array_inv!22042 (array!59435) Bool)

(assert (=> start!82776 (array_inv!22042 _keys!1686)))

(assert (=> start!82776 tp!65764))

(assert (=> start!82776 tp_is_empty!21683))

(declare-fun b!964989 () Bool)

(assert (=> b!964989 (= e!544021 false)))

(declare-fun minValue!1342 () V!33893)

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!431151 () Bool)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33893)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14080 0))(
  ( (tuple2!14081 (_1!7050 (_ BitVec 64)) (_2!7050 V!33893)) )
))
(declare-datatypes ((List!19956 0))(
  ( (Nil!19953) (Cons!19952 (h!21114 tuple2!14080) (t!28327 List!19956)) )
))
(declare-datatypes ((ListLongMap!12791 0))(
  ( (ListLongMap!12792 (toList!6411 List!19956)) )
))
(declare-fun contains!5465 (ListLongMap!12791 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3596 (array!59435 array!59433 (_ BitVec 32) (_ BitVec 32) V!33893 V!33893 (_ BitVec 32) Int) ListLongMap!12791)

(assert (=> b!964989 (= lt!431151 (contains!5465 (getCurrentListMap!3596 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28582 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34519 () Bool)

(declare-fun mapRes!34519 () Bool)

(assert (=> mapIsEmpty!34519 mapRes!34519))

(declare-fun b!964990 () Bool)

(declare-fun res!646055 () Bool)

(assert (=> b!964990 (=> (not res!646055) (not e!544021))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964990 (= res!646055 (validKeyInArray!0 (select (arr!28582 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34519 () Bool)

(declare-fun tp!65763 () Bool)

(declare-fun e!544023 () Bool)

(assert (=> mapNonEmpty!34519 (= mapRes!34519 (and tp!65763 e!544023))))

(declare-fun mapKey!34519 () (_ BitVec 32))

(declare-fun mapRest!34519 () (Array (_ BitVec 32) ValueCell!10360))

(declare-fun mapValue!34519 () ValueCell!10360)

(assert (=> mapNonEmpty!34519 (= (arr!28581 _values!1400) (store mapRest!34519 mapKey!34519 mapValue!34519))))

(declare-fun b!964991 () Bool)

(declare-fun res!646050 () Bool)

(assert (=> b!964991 (=> (not res!646050) (not e!544021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59435 (_ BitVec 32)) Bool)

(assert (=> b!964991 (= res!646050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964992 () Bool)

(declare-fun res!646052 () Bool)

(assert (=> b!964992 (=> (not res!646052) (not e!544021))))

(assert (=> b!964992 (= res!646052 (and (= (size!29061 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29062 _keys!1686) (size!29061 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964993 () Bool)

(assert (=> b!964993 (= e!544023 tp_is_empty!21683)))

(declare-fun b!964994 () Bool)

(declare-fun res!646054 () Bool)

(assert (=> b!964994 (=> (not res!646054) (not e!544021))))

(declare-datatypes ((List!19957 0))(
  ( (Nil!19954) (Cons!19953 (h!21115 (_ BitVec 64)) (t!28328 List!19957)) )
))
(declare-fun arrayNoDuplicates!0 (array!59435 (_ BitVec 32) List!19957) Bool)

(assert (=> b!964994 (= res!646054 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19954))))

(declare-fun b!964995 () Bool)

(assert (=> b!964995 (= e!544022 (and e!544020 mapRes!34519))))

(declare-fun condMapEmpty!34519 () Bool)

(declare-fun mapDefault!34519 () ValueCell!10360)

