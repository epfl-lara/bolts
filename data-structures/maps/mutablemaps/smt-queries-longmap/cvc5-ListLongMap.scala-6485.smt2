; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82778 () Bool)

(assert start!82778)

(declare-fun b_free!18883 () Bool)

(declare-fun b_next!18883 () Bool)

(assert (=> start!82778 (= b_free!18883 (not b_next!18883))))

(declare-fun tp!65769 () Bool)

(declare-fun b_and!30389 () Bool)

(assert (=> start!82778 (= tp!65769 b_and!30389)))

(declare-fun b!965015 () Bool)

(declare-fun res!646070 () Bool)

(declare-fun e!544035 () Bool)

(assert (=> b!965015 (=> (not res!646070) (not e!544035))))

(declare-datatypes ((array!59437 0))(
  ( (array!59438 (arr!28583 (Array (_ BitVec 32) (_ BitVec 64))) (size!29063 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59437)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965015 (= res!646070 (validKeyInArray!0 (select (arr!28583 _keys!1686) i!803)))))

(declare-fun b!965016 () Bool)

(declare-fun e!544037 () Bool)

(declare-fun tp_is_empty!21685 () Bool)

(assert (=> b!965016 (= e!544037 tp_is_empty!21685)))

(declare-fun b!965017 () Bool)

(declare-fun res!646068 () Bool)

(assert (=> b!965017 (=> (not res!646068) (not e!544035))))

(declare-datatypes ((V!33897 0))(
  ( (V!33898 (val!10893 Int)) )
))
(declare-datatypes ((ValueCell!10361 0))(
  ( (ValueCellFull!10361 (v!13451 V!33897)) (EmptyCell!10361) )
))
(declare-datatypes ((array!59439 0))(
  ( (array!59440 (arr!28584 (Array (_ BitVec 32) ValueCell!10361)) (size!29064 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59439)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!965017 (= res!646068 (and (= (size!29064 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29063 _keys!1686) (size!29064 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965018 () Bool)

(assert (=> b!965018 (= e!544035 false)))

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!431154 () Bool)

(declare-fun minValue!1342 () V!33897)

(declare-fun zeroValue!1342 () V!33897)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14082 0))(
  ( (tuple2!14083 (_1!7051 (_ BitVec 64)) (_2!7051 V!33897)) )
))
(declare-datatypes ((List!19958 0))(
  ( (Nil!19955) (Cons!19954 (h!21116 tuple2!14082) (t!28329 List!19958)) )
))
(declare-datatypes ((ListLongMap!12793 0))(
  ( (ListLongMap!12794 (toList!6412 List!19958)) )
))
(declare-fun contains!5466 (ListLongMap!12793 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3597 (array!59437 array!59439 (_ BitVec 32) (_ BitVec 32) V!33897 V!33897 (_ BitVec 32) Int) ListLongMap!12793)

(assert (=> b!965018 (= lt!431154 (contains!5466 (getCurrentListMap!3597 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28583 _keys!1686) i!803)))))

(declare-fun b!965019 () Bool)

(declare-fun res!646071 () Bool)

(assert (=> b!965019 (=> (not res!646071) (not e!544035))))

(declare-datatypes ((List!19959 0))(
  ( (Nil!19956) (Cons!19955 (h!21117 (_ BitVec 64)) (t!28330 List!19959)) )
))
(declare-fun arrayNoDuplicates!0 (array!59437 (_ BitVec 32) List!19959) Bool)

(assert (=> b!965019 (= res!646071 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19956))))

(declare-fun b!965020 () Bool)

(declare-fun res!646072 () Bool)

(assert (=> b!965020 (=> (not res!646072) (not e!544035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59437 (_ BitVec 32)) Bool)

(assert (=> b!965020 (= res!646072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!646073 () Bool)

(assert (=> start!82778 (=> (not res!646073) (not e!544035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82778 (= res!646073 (validMask!0 mask!2110))))

(assert (=> start!82778 e!544035))

(assert (=> start!82778 true))

(declare-fun e!544036 () Bool)

(declare-fun array_inv!22043 (array!59439) Bool)

(assert (=> start!82778 (and (array_inv!22043 _values!1400) e!544036)))

(declare-fun array_inv!22044 (array!59437) Bool)

(assert (=> start!82778 (array_inv!22044 _keys!1686)))

(assert (=> start!82778 tp!65769))

(assert (=> start!82778 tp_is_empty!21685))

(declare-fun b!965021 () Bool)

(declare-fun res!646069 () Bool)

(assert (=> b!965021 (=> (not res!646069) (not e!544035))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!965021 (= res!646069 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29063 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29063 _keys!1686))))))

(declare-fun b!965022 () Bool)

(declare-fun e!544039 () Bool)

(assert (=> b!965022 (= e!544039 tp_is_empty!21685)))

(declare-fun mapIsEmpty!34522 () Bool)

(declare-fun mapRes!34522 () Bool)

(assert (=> mapIsEmpty!34522 mapRes!34522))

(declare-fun b!965023 () Bool)

(assert (=> b!965023 (= e!544036 (and e!544039 mapRes!34522))))

(declare-fun condMapEmpty!34522 () Bool)

(declare-fun mapDefault!34522 () ValueCell!10361)

