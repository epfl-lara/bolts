; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82712 () Bool)

(assert start!82712)

(declare-fun b_free!18817 () Bool)

(declare-fun b_next!18817 () Bool)

(assert (=> start!82712 (= b_free!18817 (not b_next!18817))))

(declare-fun tp!65571 () Bool)

(declare-fun b_and!30323 () Bool)

(assert (=> start!82712 (= tp!65571 b_and!30323)))

(declare-fun b!963914 () Bool)

(declare-fun res!645272 () Bool)

(declare-fun e!543474 () Bool)

(assert (=> b!963914 (=> (not res!645272) (not e!543474))))

(declare-datatypes ((array!59313 0))(
  ( (array!59314 (arr!28521 (Array (_ BitVec 32) (_ BitVec 64))) (size!29001 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59313)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59313 (_ BitVec 32)) Bool)

(assert (=> b!963914 (= res!645272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963915 () Bool)

(declare-fun res!645264 () Bool)

(assert (=> b!963915 (=> (not res!645264) (not e!543474))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963915 (= res!645264 (validKeyInArray!0 (select (arr!28521 _keys!1686) i!803)))))

(declare-fun b!963916 () Bool)

(declare-fun res!645266 () Bool)

(assert (=> b!963916 (=> (not res!645266) (not e!543474))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!963916 (= res!645266 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29001 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29001 _keys!1686))))))

(declare-fun b!963917 () Bool)

(declare-fun res!645267 () Bool)

(assert (=> b!963917 (=> (not res!645267) (not e!543474))))

(assert (=> b!963917 (= res!645267 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963918 () Bool)

(declare-fun e!543473 () Bool)

(declare-fun tp_is_empty!21619 () Bool)

(assert (=> b!963918 (= e!543473 tp_is_empty!21619)))

(declare-fun mapIsEmpty!34423 () Bool)

(declare-fun mapRes!34423 () Bool)

(assert (=> mapIsEmpty!34423 mapRes!34423))

(declare-fun b!963919 () Bool)

(declare-fun res!645270 () Bool)

(assert (=> b!963919 (=> (not res!645270) (not e!543474))))

(declare-datatypes ((List!19916 0))(
  ( (Nil!19913) (Cons!19912 (h!21074 (_ BitVec 64)) (t!28287 List!19916)) )
))
(declare-fun arrayNoDuplicates!0 (array!59313 (_ BitVec 32) List!19916) Bool)

(assert (=> b!963919 (= res!645270 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19913))))

(declare-fun b!963921 () Bool)

(declare-fun e!543470 () Bool)

(assert (=> b!963921 (= e!543474 (not e!543470))))

(declare-fun res!645269 () Bool)

(assert (=> b!963921 (=> res!645269 e!543470)))

(assert (=> b!963921 (= res!645269 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29001 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33809 0))(
  ( (V!33810 (val!10860 Int)) )
))
(declare-datatypes ((ValueCell!10328 0))(
  ( (ValueCellFull!10328 (v!13418 V!33809)) (EmptyCell!10328) )
))
(declare-datatypes ((array!59315 0))(
  ( (array!59316 (arr!28522 (Array (_ BitVec 32) ValueCell!10328)) (size!29002 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59315)

(declare-fun defaultEntry!1403 () Int)

(declare-fun minValue!1342 () V!33809)

(declare-fun zeroValue!1342 () V!33809)

(declare-datatypes ((tuple2!14038 0))(
  ( (tuple2!14039 (_1!7029 (_ BitVec 64)) (_2!7029 V!33809)) )
))
(declare-datatypes ((List!19917 0))(
  ( (Nil!19914) (Cons!19913 (h!21075 tuple2!14038) (t!28288 List!19917)) )
))
(declare-datatypes ((ListLongMap!12749 0))(
  ( (ListLongMap!12750 (toList!6390 List!19917)) )
))
(declare-fun contains!5444 (ListLongMap!12749 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3575 (array!59313 array!59315 (_ BitVec 32) (_ BitVec 32) V!33809 V!33809 (_ BitVec 32) Int) ListLongMap!12749)

(assert (=> b!963921 (contains!5444 (getCurrentListMap!3575 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28521 _keys!1686) i!803))))

(declare-datatypes ((Unit!32235 0))(
  ( (Unit!32236) )
))
(declare-fun lt!430985 () Unit!32235)

(declare-fun lemmaInListMapFromThenInFromMinusOne!26 (array!59313 array!59315 (_ BitVec 32) (_ BitVec 32) V!33809 V!33809 (_ BitVec 32) (_ BitVec 32) Int) Unit!32235)

(assert (=> b!963921 (= lt!430985 (lemmaInListMapFromThenInFromMinusOne!26 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963922 () Bool)

(declare-fun e!543471 () Bool)

(declare-fun e!543475 () Bool)

(assert (=> b!963922 (= e!543471 (and e!543475 mapRes!34423))))

(declare-fun condMapEmpty!34423 () Bool)

(declare-fun mapDefault!34423 () ValueCell!10328)

