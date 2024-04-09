; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82640 () Bool)

(assert start!82640)

(declare-fun b_free!18745 () Bool)

(declare-fun b_next!18745 () Bool)

(assert (=> start!82640 (= b_free!18745 (not b_next!18745))))

(declare-fun tp!65356 () Bool)

(declare-fun b_and!30251 () Bool)

(assert (=> start!82640 (= tp!65356 b_and!30251)))

(declare-fun b!962715 () Bool)

(declare-fun e!542921 () Bool)

(assert (=> b!962715 (= e!542921 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33713 0))(
  ( (V!33714 (val!10824 Int)) )
))
(declare-datatypes ((ValueCell!10292 0))(
  ( (ValueCellFull!10292 (v!13382 V!33713)) (EmptyCell!10292) )
))
(declare-datatypes ((array!59171 0))(
  ( (array!59172 (arr!28450 (Array (_ BitVec 32) ValueCell!10292)) (size!28930 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59171)

(declare-datatypes ((array!59173 0))(
  ( (array!59174 (arr!28451 (Array (_ BitVec 32) (_ BitVec 64))) (size!28931 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59173)

(declare-fun minValue!1342 () V!33713)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33713)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!13982 0))(
  ( (tuple2!13983 (_1!7001 (_ BitVec 64)) (_2!7001 V!33713)) )
))
(declare-datatypes ((List!19866 0))(
  ( (Nil!19863) (Cons!19862 (h!21024 tuple2!13982) (t!28237 List!19866)) )
))
(declare-datatypes ((ListLongMap!12693 0))(
  ( (ListLongMap!12694 (toList!6362 List!19866)) )
))
(declare-fun contains!5416 (ListLongMap!12693 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3547 (array!59173 array!59171 (_ BitVec 32) (_ BitVec 32) V!33713 V!33713 (_ BitVec 32) Int) ListLongMap!12693)

(assert (=> b!962715 (contains!5416 (getCurrentListMap!3547 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28451 _keys!1686) i!803))))

(declare-datatypes ((Unit!32191 0))(
  ( (Unit!32192) )
))
(declare-fun lt!430866 () Unit!32191)

(declare-fun lemmaInListMapFromThenInFromMinusOne!4 (array!59173 array!59171 (_ BitVec 32) (_ BitVec 32) V!33713 V!33713 (_ BitVec 32) (_ BitVec 32) Int) Unit!32191)

(assert (=> b!962715 (= lt!430866 (lemmaInListMapFromThenInFromMinusOne!4 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!962716 () Bool)

(declare-fun e!542920 () Bool)

(declare-fun tp_is_empty!21547 () Bool)

(assert (=> b!962716 (= e!542920 tp_is_empty!21547)))

(declare-fun b!962717 () Bool)

(declare-fun res!644393 () Bool)

(assert (=> b!962717 (=> (not res!644393) (not e!542921))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962717 (= res!644393 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28931 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28931 _keys!1686))))))

(declare-fun res!644396 () Bool)

(assert (=> start!82640 (=> (not res!644396) (not e!542921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82640 (= res!644396 (validMask!0 mask!2110))))

(assert (=> start!82640 e!542921))

(assert (=> start!82640 true))

(declare-fun e!542922 () Bool)

(declare-fun array_inv!21967 (array!59171) Bool)

(assert (=> start!82640 (and (array_inv!21967 _values!1400) e!542922)))

(declare-fun array_inv!21968 (array!59173) Bool)

(assert (=> start!82640 (array_inv!21968 _keys!1686)))

(assert (=> start!82640 tp!65356))

(assert (=> start!82640 tp_is_empty!21547))

(declare-fun b!962718 () Bool)

(declare-fun res!644392 () Bool)

(assert (=> b!962718 (=> (not res!644392) (not e!542921))))

(assert (=> b!962718 (= res!644392 (bvsgt from!2084 newFrom!159))))

(declare-fun b!962719 () Bool)

(declare-fun res!644395 () Bool)

(assert (=> b!962719 (=> (not res!644395) (not e!542921))))

(declare-datatypes ((List!19867 0))(
  ( (Nil!19864) (Cons!19863 (h!21025 (_ BitVec 64)) (t!28238 List!19867)) )
))
(declare-fun arrayNoDuplicates!0 (array!59173 (_ BitVec 32) List!19867) Bool)

(assert (=> b!962719 (= res!644395 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19864))))

(declare-fun b!962720 () Bool)

(declare-fun res!644394 () Bool)

(assert (=> b!962720 (=> (not res!644394) (not e!542921))))

(assert (=> b!962720 (= res!644394 (contains!5416 (getCurrentListMap!3547 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28451 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34315 () Bool)

(declare-fun mapRes!34315 () Bool)

(declare-fun tp!65355 () Bool)

(declare-fun e!542923 () Bool)

(assert (=> mapNonEmpty!34315 (= mapRes!34315 (and tp!65355 e!542923))))

(declare-fun mapKey!34315 () (_ BitVec 32))

(declare-fun mapRest!34315 () (Array (_ BitVec 32) ValueCell!10292))

(declare-fun mapValue!34315 () ValueCell!10292)

(assert (=> mapNonEmpty!34315 (= (arr!28450 _values!1400) (store mapRest!34315 mapKey!34315 mapValue!34315))))

(declare-fun b!962721 () Bool)

(declare-fun res!644391 () Bool)

(assert (=> b!962721 (=> (not res!644391) (not e!542921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59173 (_ BitVec 32)) Bool)

(assert (=> b!962721 (= res!644391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!962722 () Bool)

(declare-fun res!644389 () Bool)

(assert (=> b!962722 (=> (not res!644389) (not e!542921))))

(assert (=> b!962722 (= res!644389 (and (= (size!28930 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28931 _keys!1686) (size!28930 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34315 () Bool)

(assert (=> mapIsEmpty!34315 mapRes!34315))

(declare-fun b!962723 () Bool)

(declare-fun res!644390 () Bool)

(assert (=> b!962723 (=> (not res!644390) (not e!542921))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962723 (= res!644390 (validKeyInArray!0 (select (arr!28451 _keys!1686) i!803)))))

(declare-fun b!962724 () Bool)

(assert (=> b!962724 (= e!542922 (and e!542920 mapRes!34315))))

(declare-fun condMapEmpty!34315 () Bool)

(declare-fun mapDefault!34315 () ValueCell!10292)

