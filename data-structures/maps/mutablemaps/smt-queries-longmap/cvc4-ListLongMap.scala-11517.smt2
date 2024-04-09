; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134112 () Bool)

(assert start!134112)

(declare-fun b_free!32207 () Bool)

(declare-fun b_next!32207 () Bool)

(assert (=> start!134112 (= b_free!32207 (not b_next!32207))))

(declare-fun tp!113940 () Bool)

(declare-fun b_and!51861 () Bool)

(assert (=> start!134112 (= tp!113940 b_and!51861)))

(declare-fun b!1566936 () Bool)

(declare-fun res!1071030 () Bool)

(declare-fun e!873470 () Bool)

(assert (=> b!1566936 (=> (not res!1071030) (not e!873470))))

(declare-datatypes ((array!104637 0))(
  ( (array!104638 (arr!50499 (Array (_ BitVec 32) (_ BitVec 64))) (size!51050 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104637)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1566936 (= res!1071030 (not (validKeyInArray!0 (select (arr!50499 _keys!637) from!782))))))

(declare-fun b!1566938 () Bool)

(declare-fun e!873467 () Bool)

(declare-fun tp_is_empty!38987 () Bool)

(assert (=> b!1566938 (= e!873467 tp_is_empty!38987)))

(declare-fun mapNonEmpty!59880 () Bool)

(declare-fun mapRes!59880 () Bool)

(declare-fun tp!113941 () Bool)

(assert (=> mapNonEmpty!59880 (= mapRes!59880 (and tp!113941 e!873467))))

(declare-datatypes ((V!60189 0))(
  ( (V!60190 (val!19577 Int)) )
))
(declare-datatypes ((ValueCell!18463 0))(
  ( (ValueCellFull!18463 (v!22333 V!60189)) (EmptyCell!18463) )
))
(declare-fun mapValue!59880 () ValueCell!18463)

(declare-fun mapKey!59880 () (_ BitVec 32))

(declare-datatypes ((array!104639 0))(
  ( (array!104640 (arr!50500 (Array (_ BitVec 32) ValueCell!18463)) (size!51051 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104639)

(declare-fun mapRest!59880 () (Array (_ BitVec 32) ValueCell!18463))

(assert (=> mapNonEmpty!59880 (= (arr!50500 _values!487) (store mapRest!59880 mapKey!59880 mapValue!59880))))

(declare-fun b!1566939 () Bool)

(declare-fun res!1071036 () Bool)

(assert (=> b!1566939 (=> (not res!1071036) (not e!873470))))

(assert (=> b!1566939 (= res!1071036 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51050 _keys!637)) (bvslt from!782 (size!51050 _keys!637))))))

(declare-fun b!1566940 () Bool)

(declare-fun e!873468 () Bool)

(assert (=> b!1566940 (= e!873468 false)))

(declare-fun lt!672779 () Bool)

(declare-datatypes ((tuple2!25424 0))(
  ( (tuple2!25425 (_1!12722 (_ BitVec 64)) (_2!12722 V!60189)) )
))
(declare-datatypes ((List!36810 0))(
  ( (Nil!36807) (Cons!36806 (h!38254 tuple2!25424) (t!51721 List!36810)) )
))
(declare-datatypes ((ListLongMap!22871 0))(
  ( (ListLongMap!22872 (toList!11451 List!36810)) )
))
(declare-fun lt!672778 () ListLongMap!22871)

(declare-fun contains!10375 (ListLongMap!22871 (_ BitVec 64)) Bool)

(assert (=> b!1566940 (= lt!672779 (contains!10375 lt!672778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566941 () Bool)

(declare-fun res!1071031 () Bool)

(assert (=> b!1566941 (=> (not res!1071031) (not e!873470))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104637 (_ BitVec 32)) Bool)

(assert (=> b!1566941 (= res!1071031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1566942 () Bool)

(declare-fun e!873469 () Bool)

(declare-fun e!873465 () Bool)

(assert (=> b!1566942 (= e!873469 (and e!873465 mapRes!59880))))

(declare-fun condMapEmpty!59880 () Bool)

(declare-fun mapDefault!59880 () ValueCell!18463)

