; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4202 () Bool)

(assert start!4202)

(declare-fun b_free!1109 () Bool)

(declare-fun b_next!1109 () Bool)

(assert (=> start!4202 (= b_free!1109 (not b_next!1109))))

(declare-fun tp!4746 () Bool)

(declare-fun b_and!1921 () Bool)

(assert (=> start!4202 (= tp!4746 b_and!1921)))

(declare-fun b!32036 () Bool)

(declare-fun res!19440 () Bool)

(declare-fun e!20398 () Bool)

(assert (=> b!32036 (=> (not res!19440) (not e!20398))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32036 (= res!19440 (validKeyInArray!0 k!1304))))

(declare-fun b!32037 () Bool)

(declare-fun res!19438 () Bool)

(assert (=> b!32037 (=> (not res!19438) (not e!20398))))

(declare-datatypes ((array!2133 0))(
  ( (array!2134 (arr!1020 (Array (_ BitVec 32) (_ BitVec 64))) (size!1121 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2133)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2133 (_ BitVec 32)) Bool)

(assert (=> b!32037 (= res!19438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32038 () Bool)

(declare-fun e!20397 () Bool)

(declare-fun tp_is_empty!1463 () Bool)

(assert (=> b!32038 (= e!20397 tp_is_empty!1463)))

(declare-fun b!32039 () Bool)

(declare-fun e!20399 () Bool)

(assert (=> b!32039 (= e!20399 tp_is_empty!1463)))

(declare-fun b!32040 () Bool)

(declare-fun res!19437 () Bool)

(assert (=> b!32040 (=> (not res!19437) (not e!20398))))

(declare-datatypes ((V!1775 0))(
  ( (V!1776 (val!758 Int)) )
))
(declare-datatypes ((ValueCell!532 0))(
  ( (ValueCellFull!532 (v!1847 V!1775)) (EmptyCell!532) )
))
(declare-datatypes ((array!2135 0))(
  ( (array!2136 (arr!1021 (Array (_ BitVec 32) ValueCell!532)) (size!1122 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2135)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!32040 (= res!19437 (and (= (size!1122 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1121 _keys!1833) (size!1122 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32041 () Bool)

(assert (=> b!32041 (= e!20398 false)))

(declare-fun lt!11634 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2133 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32041 (= lt!11634 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32043 () Bool)

(declare-fun res!19441 () Bool)

(assert (=> b!32043 (=> (not res!19441) (not e!20398))))

(declare-datatypes ((List!831 0))(
  ( (Nil!828) (Cons!827 (h!1394 (_ BitVec 64)) (t!3526 List!831)) )
))
(declare-fun arrayNoDuplicates!0 (array!2133 (_ BitVec 32) List!831) Bool)

(assert (=> b!32043 (= res!19441 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!828))))

(declare-fun mapIsEmpty!1723 () Bool)

(declare-fun mapRes!1723 () Bool)

(assert (=> mapIsEmpty!1723 mapRes!1723))

(declare-fun b!32044 () Bool)

(declare-fun res!19439 () Bool)

(assert (=> b!32044 (=> (not res!19439) (not e!20398))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1775)

(declare-fun minValue!1443 () V!1775)

(declare-datatypes ((tuple2!1228 0))(
  ( (tuple2!1229 (_1!624 (_ BitVec 64)) (_2!624 V!1775)) )
))
(declare-datatypes ((List!832 0))(
  ( (Nil!829) (Cons!828 (h!1395 tuple2!1228) (t!3527 List!832)) )
))
(declare-datatypes ((ListLongMap!809 0))(
  ( (ListLongMap!810 (toList!420 List!832)) )
))
(declare-fun contains!357 (ListLongMap!809 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!245 (array!2133 array!2135 (_ BitVec 32) (_ BitVec 32) V!1775 V!1775 (_ BitVec 32) Int) ListLongMap!809)

(assert (=> b!32044 (= res!19439 (not (contains!357 (getCurrentListMap!245 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!32042 () Bool)

(declare-fun e!20401 () Bool)

(assert (=> b!32042 (= e!20401 (and e!20399 mapRes!1723))))

(declare-fun condMapEmpty!1723 () Bool)

(declare-fun mapDefault!1723 () ValueCell!532)

