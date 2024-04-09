; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82644 () Bool)

(assert start!82644)

(declare-fun b_free!18749 () Bool)

(declare-fun b_next!18749 () Bool)

(assert (=> start!82644 (= b_free!18749 (not b_next!18749))))

(declare-fun tp!65368 () Bool)

(declare-fun b_and!30255 () Bool)

(assert (=> start!82644 (= tp!65368 b_and!30255)))

(declare-fun b!962781 () Bool)

(declare-fun e!542951 () Bool)

(declare-fun tp_is_empty!21551 () Bool)

(assert (=> b!962781 (= e!542951 tp_is_empty!21551)))

(declare-fun mapNonEmpty!34321 () Bool)

(declare-fun mapRes!34321 () Bool)

(declare-fun tp!65367 () Bool)

(assert (=> mapNonEmpty!34321 (= mapRes!34321 (and tp!65367 e!542951))))

(declare-datatypes ((V!33717 0))(
  ( (V!33718 (val!10826 Int)) )
))
(declare-datatypes ((ValueCell!10294 0))(
  ( (ValueCellFull!10294 (v!13384 V!33717)) (EmptyCell!10294) )
))
(declare-datatypes ((array!59179 0))(
  ( (array!59180 (arr!28454 (Array (_ BitVec 32) ValueCell!10294)) (size!28934 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59179)

(declare-fun mapRest!34321 () (Array (_ BitVec 32) ValueCell!10294))

(declare-fun mapValue!34321 () ValueCell!10294)

(declare-fun mapKey!34321 () (_ BitVec 32))

(assert (=> mapNonEmpty!34321 (= (arr!28454 _values!1400) (store mapRest!34321 mapKey!34321 mapValue!34321))))

(declare-fun b!962782 () Bool)

(declare-fun res!644437 () Bool)

(declare-fun e!542949 () Bool)

(assert (=> b!962782 (=> (not res!644437) (not e!542949))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59181 0))(
  ( (array!59182 (arr!28455 (Array (_ BitVec 32) (_ BitVec 64))) (size!28935 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59181)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!962782 (= res!644437 (and (= (size!28934 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28935 _keys!1686) (size!28934 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962783 () Bool)

(declare-fun res!644442 () Bool)

(assert (=> b!962783 (=> (not res!644442) (not e!542949))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962783 (= res!644442 (validKeyInArray!0 (select (arr!28455 _keys!1686) i!803)))))

(declare-fun b!962784 () Bool)

(assert (=> b!962784 (= e!542949 (not true))))

(declare-fun minValue!1342 () V!33717)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33717)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!13986 0))(
  ( (tuple2!13987 (_1!7003 (_ BitVec 64)) (_2!7003 V!33717)) )
))
(declare-datatypes ((List!19870 0))(
  ( (Nil!19867) (Cons!19866 (h!21028 tuple2!13986) (t!28241 List!19870)) )
))
(declare-datatypes ((ListLongMap!12697 0))(
  ( (ListLongMap!12698 (toList!6364 List!19870)) )
))
(declare-fun contains!5418 (ListLongMap!12697 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3549 (array!59181 array!59179 (_ BitVec 32) (_ BitVec 32) V!33717 V!33717 (_ BitVec 32) Int) ListLongMap!12697)

(assert (=> b!962784 (contains!5418 (getCurrentListMap!3549 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28455 _keys!1686) i!803))))

(declare-datatypes ((Unit!32195 0))(
  ( (Unit!32196) )
))
(declare-fun lt!430872 () Unit!32195)

(declare-fun lemmaInListMapFromThenInFromMinusOne!6 (array!59181 array!59179 (_ BitVec 32) (_ BitVec 32) V!33717 V!33717 (_ BitVec 32) (_ BitVec 32) Int) Unit!32195)

(assert (=> b!962784 (= lt!430872 (lemmaInListMapFromThenInFromMinusOne!6 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun mapIsEmpty!34321 () Bool)

(assert (=> mapIsEmpty!34321 mapRes!34321))

(declare-fun b!962786 () Bool)

(declare-fun res!644443 () Bool)

(assert (=> b!962786 (=> (not res!644443) (not e!542949))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962786 (= res!644443 (bvsgt from!2084 newFrom!159))))

(declare-fun b!962787 () Bool)

(declare-fun res!644440 () Bool)

(assert (=> b!962787 (=> (not res!644440) (not e!542949))))

(assert (=> b!962787 (= res!644440 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28935 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28935 _keys!1686))))))

(declare-fun b!962788 () Bool)

(declare-fun res!644444 () Bool)

(assert (=> b!962788 (=> (not res!644444) (not e!542949))))

(assert (=> b!962788 (= res!644444 (contains!5418 (getCurrentListMap!3549 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28455 _keys!1686) i!803)))))

(declare-fun b!962789 () Bool)

(declare-fun e!542950 () Bool)

(assert (=> b!962789 (= e!542950 tp_is_empty!21551)))

(declare-fun b!962790 () Bool)

(declare-fun e!542952 () Bool)

(assert (=> b!962790 (= e!542952 (and e!542950 mapRes!34321))))

(declare-fun condMapEmpty!34321 () Bool)

(declare-fun mapDefault!34321 () ValueCell!10294)

