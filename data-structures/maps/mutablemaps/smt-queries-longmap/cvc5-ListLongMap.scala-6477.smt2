; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82730 () Bool)

(assert start!82730)

(declare-fun b_free!18835 () Bool)

(declare-fun b_next!18835 () Bool)

(assert (=> start!82730 (= b_free!18835 (not b_next!18835))))

(declare-fun tp!65626 () Bool)

(declare-fun b_and!30341 () Bool)

(assert (=> start!82730 (= tp!65626 b_and!30341)))

(declare-fun b!964238 () Bool)

(declare-fun e!543637 () Bool)

(assert (=> b!964238 (= e!543637 true)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33833 0))(
  ( (V!33834 (val!10869 Int)) )
))
(declare-datatypes ((ValueCell!10337 0))(
  ( (ValueCellFull!10337 (v!13427 V!33833)) (EmptyCell!10337) )
))
(declare-datatypes ((array!59347 0))(
  ( (array!59348 (arr!28538 (Array (_ BitVec 32) ValueCell!10337)) (size!29018 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59347)

(declare-datatypes ((array!59349 0))(
  ( (array!59350 (arr!28539 (Array (_ BitVec 32) (_ BitVec 64))) (size!29019 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59349)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33833)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33833)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-datatypes ((tuple2!14050 0))(
  ( (tuple2!14051 (_1!7035 (_ BitVec 64)) (_2!7035 V!33833)) )
))
(declare-datatypes ((List!19929 0))(
  ( (Nil!19926) (Cons!19925 (h!21087 tuple2!14050) (t!28300 List!19929)) )
))
(declare-datatypes ((ListLongMap!12761 0))(
  ( (ListLongMap!12762 (toList!6396 List!19929)) )
))
(declare-fun contains!5450 (ListLongMap!12761 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3581 (array!59349 array!59347 (_ BitVec 32) (_ BitVec 32) V!33833 V!33833 (_ BitVec 32) Int) ListLongMap!12761)

(assert (=> b!964238 (contains!5450 (getCurrentListMap!3581 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28539 _keys!1686) i!803))))

(declare-datatypes ((Unit!32247 0))(
  ( (Unit!32248) )
))
(declare-fun lt!431039 () Unit!32247)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun lemmaInListMapFromThenInFromSmaller!24 (array!59349 array!59347 (_ BitVec 32) (_ BitVec 32) V!33833 V!33833 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32247)

(assert (=> b!964238 (= lt!431039 (lemmaInListMapFromThenInFromSmaller!24 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!964239 () Bool)

(declare-fun res!645507 () Bool)

(declare-fun e!543632 () Bool)

(assert (=> b!964239 (=> (not res!645507) (not e!543632))))

(assert (=> b!964239 (= res!645507 (and (= (size!29018 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29019 _keys!1686) (size!29018 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964241 () Bool)

(declare-fun res!645509 () Bool)

(assert (=> b!964241 (=> (not res!645509) (not e!543632))))

(assert (=> b!964241 (= res!645509 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29019 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29019 _keys!1686))))))

(declare-fun b!964242 () Bool)

(declare-fun res!645510 () Bool)

(assert (=> b!964242 (=> (not res!645510) (not e!543632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59349 (_ BitVec 32)) Bool)

(assert (=> b!964242 (= res!645510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964243 () Bool)

(declare-fun res!645511 () Bool)

(assert (=> b!964243 (=> (not res!645511) (not e!543632))))

(assert (=> b!964243 (= res!645511 (bvsgt from!2084 newFrom!159))))

(declare-fun mapIsEmpty!34450 () Bool)

(declare-fun mapRes!34450 () Bool)

(assert (=> mapIsEmpty!34450 mapRes!34450))

(declare-fun b!964244 () Bool)

(declare-fun e!543635 () Bool)

(declare-fun e!543636 () Bool)

(assert (=> b!964244 (= e!543635 (and e!543636 mapRes!34450))))

(declare-fun condMapEmpty!34450 () Bool)

(declare-fun mapDefault!34450 () ValueCell!10337)

