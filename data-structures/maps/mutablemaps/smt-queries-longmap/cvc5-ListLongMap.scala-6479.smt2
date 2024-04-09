; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82742 () Bool)

(assert start!82742)

(declare-fun b_free!18847 () Bool)

(declare-fun b_next!18847 () Bool)

(assert (=> start!82742 (= b_free!18847 (not b_next!18847))))

(declare-fun tp!65662 () Bool)

(declare-fun b_and!30353 () Bool)

(assert (=> start!82742 (= tp!65662 b_and!30353)))

(declare-fun res!645674 () Bool)

(declare-fun e!543742 () Bool)

(assert (=> start!82742 (=> (not res!645674) (not e!543742))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82742 (= res!645674 (validMask!0 mask!2110))))

(assert (=> start!82742 e!543742))

(assert (=> start!82742 true))

(declare-datatypes ((V!33849 0))(
  ( (V!33850 (val!10875 Int)) )
))
(declare-datatypes ((ValueCell!10343 0))(
  ( (ValueCellFull!10343 (v!13433 V!33849)) (EmptyCell!10343) )
))
(declare-datatypes ((array!59371 0))(
  ( (array!59372 (arr!28550 (Array (_ BitVec 32) ValueCell!10343)) (size!29030 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59371)

(declare-fun e!543741 () Bool)

(declare-fun array_inv!22021 (array!59371) Bool)

(assert (=> start!82742 (and (array_inv!22021 _values!1400) e!543741)))

(declare-datatypes ((array!59373 0))(
  ( (array!59374 (arr!28551 (Array (_ BitVec 32) (_ BitVec 64))) (size!29031 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59373)

(declare-fun array_inv!22022 (array!59373) Bool)

(assert (=> start!82742 (array_inv!22022 _keys!1686)))

(assert (=> start!82742 tp!65662))

(declare-fun tp_is_empty!21649 () Bool)

(assert (=> start!82742 tp_is_empty!21649))

(declare-fun mapIsEmpty!34468 () Bool)

(declare-fun mapRes!34468 () Bool)

(assert (=> mapIsEmpty!34468 mapRes!34468))

(declare-fun b!964454 () Bool)

(declare-fun res!645672 () Bool)

(assert (=> b!964454 (=> (not res!645672) (not e!543742))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964454 (= res!645672 (validKeyInArray!0 (select (arr!28551 _keys!1686) i!803)))))

(declare-fun b!964455 () Bool)

(declare-fun e!543744 () Bool)

(assert (=> b!964455 (= e!543744 true)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33849)

(declare-fun defaultEntry!1403 () Int)

(declare-fun minValue!1342 () V!33849)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-datatypes ((tuple2!14060 0))(
  ( (tuple2!14061 (_1!7040 (_ BitVec 64)) (_2!7040 V!33849)) )
))
(declare-datatypes ((List!19937 0))(
  ( (Nil!19934) (Cons!19933 (h!21095 tuple2!14060) (t!28308 List!19937)) )
))
(declare-datatypes ((ListLongMap!12771 0))(
  ( (ListLongMap!12772 (toList!6401 List!19937)) )
))
(declare-fun contains!5455 (ListLongMap!12771 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3586 (array!59373 array!59371 (_ BitVec 32) (_ BitVec 32) V!33849 V!33849 (_ BitVec 32) Int) ListLongMap!12771)

(assert (=> b!964455 (contains!5455 (getCurrentListMap!3586 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28551 _keys!1686) i!803))))

(declare-datatypes ((Unit!32257 0))(
  ( (Unit!32258) )
))
(declare-fun lt!431075 () Unit!32257)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun lemmaInListMapFromThenInFromSmaller!28 (array!59373 array!59371 (_ BitVec 32) (_ BitVec 32) V!33849 V!33849 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32257)

(assert (=> b!964455 (= lt!431075 (lemmaInListMapFromThenInFromSmaller!28 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!964456 () Bool)

(declare-fun e!543745 () Bool)

(assert (=> b!964456 (= e!543741 (and e!543745 mapRes!34468))))

(declare-fun condMapEmpty!34468 () Bool)

(declare-fun mapDefault!34468 () ValueCell!10343)

