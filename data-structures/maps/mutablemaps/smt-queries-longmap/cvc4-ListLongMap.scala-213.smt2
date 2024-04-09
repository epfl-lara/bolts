; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3962 () Bool)

(assert start!3962)

(declare-fun b_free!869 () Bool)

(declare-fun b_next!869 () Bool)

(assert (=> start!3962 (= b_free!869 (not b_next!869))))

(declare-fun tp!4026 () Bool)

(declare-fun b_and!1681 () Bool)

(assert (=> start!3962 (= tp!4026 b_and!1681)))

(declare-fun mapNonEmpty!1363 () Bool)

(declare-fun mapRes!1363 () Bool)

(declare-fun tp!4027 () Bool)

(declare-fun e!18402 () Bool)

(assert (=> mapNonEmpty!1363 (= mapRes!1363 (and tp!4027 e!18402))))

(declare-datatypes ((V!1455 0))(
  ( (V!1456 (val!638 Int)) )
))
(declare-datatypes ((ValueCell!412 0))(
  ( (ValueCellFull!412 (v!1727 V!1455)) (EmptyCell!412) )
))
(declare-datatypes ((array!1671 0))(
  ( (array!1672 (arr!789 (Array (_ BitVec 32) ValueCell!412)) (size!890 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1671)

(declare-fun mapRest!1363 () (Array (_ BitVec 32) ValueCell!412))

(declare-fun mapKey!1363 () (_ BitVec 32))

(declare-fun mapValue!1363 () ValueCell!412)

(assert (=> mapNonEmpty!1363 (= (arr!789 _values!1501) (store mapRest!1363 mapKey!1363 mapValue!1363))))

(declare-fun b!28453 () Bool)

(declare-fun res!16933 () Bool)

(declare-fun e!18399 () Bool)

(assert (=> b!28453 (=> (not res!16933) (not e!18399))))

(declare-datatypes ((array!1673 0))(
  ( (array!1674 (arr!790 (Array (_ BitVec 32) (_ BitVec 64))) (size!891 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1673)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1673 (_ BitVec 32)) Bool)

(assert (=> b!28453 (= res!16933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28454 () Bool)

(declare-fun tp_is_empty!1223 () Bool)

(assert (=> b!28454 (= e!18402 tp_is_empty!1223)))

(declare-fun mapIsEmpty!1363 () Bool)

(assert (=> mapIsEmpty!1363 mapRes!1363))

(declare-fun b!28455 () Bool)

(declare-fun res!16939 () Bool)

(assert (=> b!28455 (=> (not res!16939) (not e!18399))))

(declare-datatypes ((List!658 0))(
  ( (Nil!655) (Cons!654 (h!1221 (_ BitVec 64)) (t!3353 List!658)) )
))
(declare-fun arrayNoDuplicates!0 (array!1673 (_ BitVec 32) List!658) Bool)

(assert (=> b!28455 (= res!16939 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!655))))

(declare-fun res!16936 () Bool)

(assert (=> start!3962 (=> (not res!16936) (not e!18399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3962 (= res!16936 (validMask!0 mask!2294))))

(assert (=> start!3962 e!18399))

(assert (=> start!3962 true))

(assert (=> start!3962 tp!4026))

(declare-fun e!18401 () Bool)

(declare-fun array_inv!535 (array!1671) Bool)

(assert (=> start!3962 (and (array_inv!535 _values!1501) e!18401)))

(declare-fun array_inv!536 (array!1673) Bool)

(assert (=> start!3962 (array_inv!536 _keys!1833)))

(assert (=> start!3962 tp_is_empty!1223))

(declare-fun b!28456 () Bool)

(declare-fun e!18397 () Bool)

(assert (=> b!28456 (= e!18397 true)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!72 0))(
  ( (MissingZero!72 (index!2410 (_ BitVec 32))) (Found!72 (index!2411 (_ BitVec 32))) (Intermediate!72 (undefined!884 Bool) (index!2412 (_ BitVec 32)) (x!6318 (_ BitVec 32))) (Undefined!72) (MissingVacant!72 (index!2413 (_ BitVec 32))) )
))
(declare-fun lt!10815 () SeekEntryResult!72)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1673 (_ BitVec 32)) SeekEntryResult!72)

(assert (=> b!28456 (= lt!10815 (seekEntryOrOpen!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!28457 () Bool)

(declare-fun e!18398 () Bool)

(assert (=> b!28457 (= e!18398 (not e!18397))))

(declare-fun res!16932 () Bool)

(assert (=> b!28457 (=> res!16932 e!18397)))

(assert (=> b!28457 (= res!16932 (not (= (size!891 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-datatypes ((tuple2!1044 0))(
  ( (tuple2!1045 (_1!532 (_ BitVec 64)) (_2!532 V!1455)) )
))
(declare-datatypes ((List!659 0))(
  ( (Nil!656) (Cons!655 (h!1222 tuple2!1044) (t!3354 List!659)) )
))
(declare-datatypes ((ListLongMap!625 0))(
  ( (ListLongMap!626 (toList!328 List!659)) )
))
(declare-fun lt!10813 () ListLongMap!625)

(declare-fun lt!10814 () (_ BitVec 32))

(declare-fun contains!265 (ListLongMap!625 (_ BitVec 64)) Bool)

(assert (=> b!28457 (contains!265 lt!10813 (select (arr!790 _keys!1833) lt!10814))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((Unit!645 0))(
  ( (Unit!646) )
))
(declare-fun lt!10812 () Unit!645)

(declare-fun zeroValue!1443 () V!1455)

(declare-fun minValue!1443 () V!1455)

(declare-fun lemmaValidKeyInArrayIsInListMap!14 (array!1673 array!1671 (_ BitVec 32) (_ BitVec 32) V!1455 V!1455 (_ BitVec 32) Int) Unit!645)

(assert (=> b!28457 (= lt!10812 (lemmaValidKeyInArrayIsInListMap!14 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!10814 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1673 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28457 (= lt!10814 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28458 () Bool)

(declare-fun e!18403 () Bool)

(assert (=> b!28458 (= e!18403 tp_is_empty!1223)))

(declare-fun b!28459 () Bool)

(assert (=> b!28459 (= e!18401 (and e!18403 mapRes!1363))))

(declare-fun condMapEmpty!1363 () Bool)

(declare-fun mapDefault!1363 () ValueCell!412)

