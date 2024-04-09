; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82634 () Bool)

(assert start!82634)

(declare-fun b_free!18739 () Bool)

(declare-fun b_next!18739 () Bool)

(assert (=> start!82634 (= b_free!18739 (not b_next!18739))))

(declare-fun tp!65337 () Bool)

(declare-fun b_and!30245 () Bool)

(assert (=> start!82634 (= tp!65337 b_and!30245)))

(declare-fun b!962616 () Bool)

(declare-fun res!644319 () Bool)

(declare-fun e!542877 () Bool)

(assert (=> b!962616 (=> (not res!644319) (not e!542877))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33705 0))(
  ( (V!33706 (val!10821 Int)) )
))
(declare-datatypes ((ValueCell!10289 0))(
  ( (ValueCellFull!10289 (v!13379 V!33705)) (EmptyCell!10289) )
))
(declare-datatypes ((array!59159 0))(
  ( (array!59160 (arr!28444 (Array (_ BitVec 32) ValueCell!10289)) (size!28924 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59159)

(declare-datatypes ((array!59161 0))(
  ( (array!59162 (arr!28445 (Array (_ BitVec 32) (_ BitVec 64))) (size!28925 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59161)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33705)

(declare-fun zeroValue!1342 () V!33705)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!13976 0))(
  ( (tuple2!13977 (_1!6998 (_ BitVec 64)) (_2!6998 V!33705)) )
))
(declare-datatypes ((List!19860 0))(
  ( (Nil!19857) (Cons!19856 (h!21018 tuple2!13976) (t!28231 List!19860)) )
))
(declare-datatypes ((ListLongMap!12687 0))(
  ( (ListLongMap!12688 (toList!6359 List!19860)) )
))
(declare-fun contains!5413 (ListLongMap!12687 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3544 (array!59161 array!59159 (_ BitVec 32) (_ BitVec 32) V!33705 V!33705 (_ BitVec 32) Int) ListLongMap!12687)

(assert (=> b!962616 (= res!644319 (contains!5413 (getCurrentListMap!3544 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28445 _keys!1686) i!803)))))

(declare-fun b!962617 () Bool)

(declare-fun res!644320 () Bool)

(assert (=> b!962617 (=> (not res!644320) (not e!542877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59161 (_ BitVec 32)) Bool)

(assert (=> b!962617 (= res!644320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!962618 () Bool)

(declare-fun e!542878 () Bool)

(declare-fun tp_is_empty!21541 () Bool)

(assert (=> b!962618 (= e!542878 tp_is_empty!21541)))

(declare-fun b!962619 () Bool)

(declare-fun res!644317 () Bool)

(assert (=> b!962619 (=> (not res!644317) (not e!542877))))

(assert (=> b!962619 (= res!644317 (and (= (size!28924 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28925 _keys!1686) (size!28924 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34306 () Bool)

(declare-fun mapRes!34306 () Bool)

(assert (=> mapIsEmpty!34306 mapRes!34306))

(declare-fun mapNonEmpty!34306 () Bool)

(declare-fun tp!65338 () Bool)

(assert (=> mapNonEmpty!34306 (= mapRes!34306 (and tp!65338 e!542878))))

(declare-fun mapRest!34306 () (Array (_ BitVec 32) ValueCell!10289))

(declare-fun mapKey!34306 () (_ BitVec 32))

(declare-fun mapValue!34306 () ValueCell!10289)

(assert (=> mapNonEmpty!34306 (= (arr!28444 _values!1400) (store mapRest!34306 mapKey!34306 mapValue!34306))))

(declare-fun b!962620 () Bool)

(declare-fun res!644323 () Bool)

(assert (=> b!962620 (=> (not res!644323) (not e!542877))))

(declare-datatypes ((List!19861 0))(
  ( (Nil!19858) (Cons!19857 (h!21019 (_ BitVec 64)) (t!28232 List!19861)) )
))
(declare-fun arrayNoDuplicates!0 (array!59161 (_ BitVec 32) List!19861) Bool)

(assert (=> b!962620 (= res!644323 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19858))))

(declare-fun b!962621 () Bool)

(declare-fun e!542876 () Bool)

(assert (=> b!962621 (= e!542876 tp_is_empty!21541)))

(declare-fun b!962623 () Bool)

(declare-fun res!644321 () Bool)

(assert (=> b!962623 (=> (not res!644321) (not e!542877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962623 (= res!644321 (validKeyInArray!0 (select (arr!28445 _keys!1686) i!803)))))

(declare-fun b!962624 () Bool)

(assert (=> b!962624 (= e!542877 (not true))))

(assert (=> b!962624 (contains!5413 (getCurrentListMap!3544 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28445 _keys!1686) i!803))))

(declare-datatypes ((Unit!32185 0))(
  ( (Unit!32186) )
))
(declare-fun lt!430857 () Unit!32185)

(declare-fun lemmaInListMapFromThenInFromMinusOne!1 (array!59161 array!59159 (_ BitVec 32) (_ BitVec 32) V!33705 V!33705 (_ BitVec 32) (_ BitVec 32) Int) Unit!32185)

(assert (=> b!962624 (= lt!430857 (lemmaInListMapFromThenInFromMinusOne!1 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!962625 () Bool)

(declare-fun res!644324 () Bool)

(assert (=> b!962625 (=> (not res!644324) (not e!542877))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962625 (= res!644324 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28925 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28925 _keys!1686))))))

(declare-fun b!962626 () Bool)

(declare-fun res!644322 () Bool)

(assert (=> b!962626 (=> (not res!644322) (not e!542877))))

(assert (=> b!962626 (= res!644322 (bvsgt from!2084 newFrom!159))))

(declare-fun res!644318 () Bool)

(assert (=> start!82634 (=> (not res!644318) (not e!542877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82634 (= res!644318 (validMask!0 mask!2110))))

(assert (=> start!82634 e!542877))

(assert (=> start!82634 true))

(declare-fun e!542874 () Bool)

(declare-fun array_inv!21961 (array!59159) Bool)

(assert (=> start!82634 (and (array_inv!21961 _values!1400) e!542874)))

(declare-fun array_inv!21962 (array!59161) Bool)

(assert (=> start!82634 (array_inv!21962 _keys!1686)))

(assert (=> start!82634 tp!65337))

(assert (=> start!82634 tp_is_empty!21541))

(declare-fun b!962622 () Bool)

(assert (=> b!962622 (= e!542874 (and e!542876 mapRes!34306))))

(declare-fun condMapEmpty!34306 () Bool)

(declare-fun mapDefault!34306 () ValueCell!10289)

