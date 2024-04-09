; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4370 () Bool)

(assert start!4370)

(declare-fun b_free!1187 () Bool)

(declare-fun b_next!1187 () Bool)

(assert (=> start!4370 (= b_free!1187 (not b_next!1187))))

(declare-fun tp!4992 () Bool)

(declare-fun b_and!2007 () Bool)

(assert (=> start!4370 (= tp!4992 b_and!2007)))

(declare-fun b!33756 () Bool)

(declare-fun res!20484 () Bool)

(declare-fun e!21432 () Bool)

(assert (=> b!33756 (=> (not res!20484) (not e!21432))))

(declare-datatypes ((array!2289 0))(
  ( (array!2290 (arr!1094 (Array (_ BitVec 32) (_ BitVec 64))) (size!1195 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2289)

(declare-datatypes ((List!889 0))(
  ( (Nil!886) (Cons!885 (h!1452 (_ BitVec 64)) (t!3592 List!889)) )
))
(declare-fun arrayNoDuplicates!0 (array!2289 (_ BitVec 32) List!889) Bool)

(assert (=> b!33756 (= res!20484 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!886))))

(declare-fun b!33757 () Bool)

(declare-fun res!20488 () Bool)

(assert (=> b!33757 (=> (not res!20488) (not e!21432))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33757 (= res!20488 (validKeyInArray!0 k!1304))))

(declare-fun e!21437 () Bool)

(declare-fun b!33758 () Bool)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun lt!12383 () (_ BitVec 32))

(assert (=> b!33758 (= e!21437 (not (or (not (= (size!1195 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))) (bvsgt #b00000000000000000000000000000000 (size!1195 _keys!1833)) (and (bvsge lt!12383 #b00000000000000000000000000000000) (bvsle lt!12383 (size!1195 _keys!1833))))))))

(declare-datatypes ((SeekEntryResult!140 0))(
  ( (MissingZero!140 (index!2682 (_ BitVec 32))) (Found!140 (index!2683 (_ BitVec 32))) (Intermediate!140 (undefined!952 Bool) (index!2684 (_ BitVec 32)) (x!6850 (_ BitVec 32))) (Undefined!140) (MissingVacant!140 (index!2685 (_ BitVec 32))) )
))
(declare-fun lt!12384 () SeekEntryResult!140)

(assert (=> b!33758 (and (is-Found!140 lt!12384) (= (index!2683 lt!12384) lt!12383))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2289 (_ BitVec 32)) SeekEntryResult!140)

(assert (=> b!33758 (= lt!12384 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!755 0))(
  ( (Unit!756) )
))
(declare-fun lt!12386 () Unit!755)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2289 (_ BitVec 32)) Unit!755)

(assert (=> b!33758 (= lt!12386 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!12383 _keys!1833 mask!2294))))

(declare-datatypes ((V!1879 0))(
  ( (V!1880 (val!797 Int)) )
))
(declare-datatypes ((tuple2!1284 0))(
  ( (tuple2!1285 (_1!652 (_ BitVec 64)) (_2!652 V!1879)) )
))
(declare-datatypes ((List!890 0))(
  ( (Nil!887) (Cons!886 (h!1453 tuple2!1284) (t!3593 List!890)) )
))
(declare-datatypes ((ListLongMap!865 0))(
  ( (ListLongMap!866 (toList!448 List!890)) )
))
(declare-fun lt!12385 () ListLongMap!865)

(declare-fun contains!389 (ListLongMap!865 (_ BitVec 64)) Bool)

(assert (=> b!33758 (contains!389 lt!12385 (select (arr!1094 _keys!1833) lt!12383))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!571 0))(
  ( (ValueCellFull!571 (v!1890 V!1879)) (EmptyCell!571) )
))
(declare-datatypes ((array!2291 0))(
  ( (array!2292 (arr!1095 (Array (_ BitVec 32) ValueCell!571)) (size!1196 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2291)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun lt!12382 () Unit!755)

(declare-fun zeroValue!1443 () V!1879)

(declare-fun minValue!1443 () V!1879)

(declare-fun lemmaValidKeyInArrayIsInListMap!62 (array!2289 array!2291 (_ BitVec 32) (_ BitVec 32) V!1879 V!1879 (_ BitVec 32) Int) Unit!755)

(assert (=> b!33758 (= lt!12382 (lemmaValidKeyInArrayIsInListMap!62 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12383 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2289 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33758 (= lt!12383 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!33759 () Bool)

(declare-fun e!21434 () Bool)

(declare-fun e!21435 () Bool)

(declare-fun mapRes!1852 () Bool)

(assert (=> b!33759 (= e!21434 (and e!21435 mapRes!1852))))

(declare-fun condMapEmpty!1852 () Bool)

(declare-fun mapDefault!1852 () ValueCell!571)

