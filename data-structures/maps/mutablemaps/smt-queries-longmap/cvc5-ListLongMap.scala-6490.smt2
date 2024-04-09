; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82808 () Bool)

(assert start!82808)

(declare-fun b_free!18913 () Bool)

(declare-fun b_next!18913 () Bool)

(assert (=> start!82808 (= b_free!18913 (not b_next!18913))))

(declare-fun tp!65859 () Bool)

(declare-fun b_and!30419 () Bool)

(assert (=> start!82808 (= tp!65859 b_and!30419)))

(declare-fun b!965422 () Bool)

(declare-fun res!646341 () Bool)

(declare-fun e!544263 () Bool)

(assert (=> b!965422 (=> (not res!646341) (not e!544263))))

(declare-datatypes ((array!59495 0))(
  ( (array!59496 (arr!28612 (Array (_ BitVec 32) (_ BitVec 64))) (size!29092 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59495)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59495 (_ BitVec 32)) Bool)

(assert (=> b!965422 (= res!646341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965423 () Bool)

(declare-fun res!646346 () Bool)

(assert (=> b!965423 (=> (not res!646346) (not e!544263))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965423 (= res!646346 (validKeyInArray!0 (select (arr!28612 _keys!1686) i!803)))))

(declare-fun b!965424 () Bool)

(declare-fun e!544261 () Bool)

(declare-fun tp_is_empty!21715 () Bool)

(assert (=> b!965424 (= e!544261 tp_is_empty!21715)))

(declare-fun b!965425 () Bool)

(declare-fun res!646343 () Bool)

(assert (=> b!965425 (=> (not res!646343) (not e!544263))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!965425 (= res!646343 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29092 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29092 _keys!1686))))))

(declare-fun mapIsEmpty!34567 () Bool)

(declare-fun mapRes!34567 () Bool)

(assert (=> mapIsEmpty!34567 mapRes!34567))

(declare-fun mapNonEmpty!34567 () Bool)

(declare-fun tp!65860 () Bool)

(assert (=> mapNonEmpty!34567 (= mapRes!34567 (and tp!65860 e!544261))))

(declare-fun mapKey!34567 () (_ BitVec 32))

(declare-datatypes ((V!33937 0))(
  ( (V!33938 (val!10908 Int)) )
))
(declare-datatypes ((ValueCell!10376 0))(
  ( (ValueCellFull!10376 (v!13466 V!33937)) (EmptyCell!10376) )
))
(declare-datatypes ((array!59497 0))(
  ( (array!59498 (arr!28613 (Array (_ BitVec 32) ValueCell!10376)) (size!29093 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59497)

(declare-fun mapRest!34567 () (Array (_ BitVec 32) ValueCell!10376))

(declare-fun mapValue!34567 () ValueCell!10376)

(assert (=> mapNonEmpty!34567 (= (arr!28613 _values!1400) (store mapRest!34567 mapKey!34567 mapValue!34567))))

(declare-fun b!965426 () Bool)

(declare-fun res!646344 () Bool)

(assert (=> b!965426 (=> (not res!646344) (not e!544263))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33937)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33937)

(declare-datatypes ((tuple2!14104 0))(
  ( (tuple2!14105 (_1!7062 (_ BitVec 64)) (_2!7062 V!33937)) )
))
(declare-datatypes ((List!19983 0))(
  ( (Nil!19980) (Cons!19979 (h!21141 tuple2!14104) (t!28354 List!19983)) )
))
(declare-datatypes ((ListLongMap!12815 0))(
  ( (ListLongMap!12816 (toList!6423 List!19983)) )
))
(declare-fun contains!5477 (ListLongMap!12815 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3608 (array!59495 array!59497 (_ BitVec 32) (_ BitVec 32) V!33937 V!33937 (_ BitVec 32) Int) ListLongMap!12815)

(assert (=> b!965426 (= res!646344 (contains!5477 (getCurrentListMap!3608 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28612 _keys!1686) i!803)))))

(declare-fun b!965427 () Bool)

(declare-fun res!646342 () Bool)

(assert (=> b!965427 (=> (not res!646342) (not e!544263))))

(assert (=> b!965427 (= res!646342 (and (= (size!29093 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29092 _keys!1686) (size!29093 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965428 () Bool)

(declare-fun res!646345 () Bool)

(assert (=> b!965428 (=> (not res!646345) (not e!544263))))

(declare-datatypes ((List!19984 0))(
  ( (Nil!19981) (Cons!19980 (h!21142 (_ BitVec 64)) (t!28355 List!19984)) )
))
(declare-fun arrayNoDuplicates!0 (array!59495 (_ BitVec 32) List!19984) Bool)

(assert (=> b!965428 (= res!646345 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19981))))

(declare-fun res!646340 () Bool)

(assert (=> start!82808 (=> (not res!646340) (not e!544263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82808 (= res!646340 (validMask!0 mask!2110))))

(assert (=> start!82808 e!544263))

(assert (=> start!82808 true))

(declare-fun e!544264 () Bool)

(declare-fun array_inv!22067 (array!59497) Bool)

(assert (=> start!82808 (and (array_inv!22067 _values!1400) e!544264)))

(declare-fun array_inv!22068 (array!59495) Bool)

(assert (=> start!82808 (array_inv!22068 _keys!1686)))

(assert (=> start!82808 tp!65859))

(assert (=> start!82808 tp_is_empty!21715))

(declare-fun b!965429 () Bool)

(declare-fun e!544262 () Bool)

(assert (=> b!965429 (= e!544262 tp_is_empty!21715)))

(declare-fun b!965430 () Bool)

(assert (=> b!965430 (= e!544264 (and e!544262 mapRes!34567))))

(declare-fun condMapEmpty!34567 () Bool)

(declare-fun mapDefault!34567 () ValueCell!10376)

