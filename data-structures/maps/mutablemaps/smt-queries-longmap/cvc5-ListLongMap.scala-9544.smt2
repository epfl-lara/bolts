; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113162 () Bool)

(assert start!113162)

(declare-fun b_free!31177 () Bool)

(declare-fun b_next!31177 () Bool)

(assert (=> start!113162 (= b_free!31177 (not b_next!31177))))

(declare-fun tp!109337 () Bool)

(declare-fun b_and!50271 () Bool)

(assert (=> start!113162 (= tp!109337 b_and!50271)))

(declare-fun b!1341156 () Bool)

(declare-fun res!889813 () Bool)

(declare-fun e!763781 () Bool)

(assert (=> b!1341156 (=> (not res!889813) (not e!763781))))

(declare-datatypes ((array!91163 0))(
  ( (array!91164 (arr!44033 (Array (_ BitVec 32) (_ BitVec 64))) (size!44584 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91163)

(declare-datatypes ((List!31358 0))(
  ( (Nil!31355) (Cons!31354 (h!32563 (_ BitVec 64)) (t!45753 List!31358)) )
))
(declare-fun arrayNoDuplicates!0 (array!91163 (_ BitVec 32) List!31358) Bool)

(assert (=> b!1341156 (= res!889813 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31355))))

(declare-fun b!1341157 () Bool)

(assert (=> b!1341157 (= e!763781 (not true))))

(declare-datatypes ((V!54673 0))(
  ( (V!54674 (val!18663 Int)) )
))
(declare-datatypes ((tuple2!24176 0))(
  ( (tuple2!24177 (_1!12098 (_ BitVec 64)) (_2!12098 V!54673)) )
))
(declare-datatypes ((List!31359 0))(
  ( (Nil!31356) (Cons!31355 (h!32564 tuple2!24176) (t!45754 List!31359)) )
))
(declare-datatypes ((ListLongMap!21845 0))(
  ( (ListLongMap!21846 (toList!10938 List!31359)) )
))
(declare-fun lt!594049 () ListLongMap!21845)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9050 (ListLongMap!21845 (_ BitVec 64)) Bool)

(assert (=> b!1341157 (contains!9050 lt!594049 k!1142)))

(declare-datatypes ((Unit!43953 0))(
  ( (Unit!43954) )
))
(declare-fun lt!594048 () Unit!43953)

(declare-fun zeroValue!1245 () V!54673)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!336 ((_ BitVec 64) (_ BitVec 64) V!54673 ListLongMap!21845) Unit!43953)

(assert (=> b!1341157 (= lt!594048 (lemmaInListMapAfterAddingDiffThenInBefore!336 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594049))))

(declare-fun minValue!1245 () V!54673)

(declare-fun defaultEntry!1306 () Int)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17690 0))(
  ( (ValueCellFull!17690 (v!21309 V!54673)) (EmptyCell!17690) )
))
(declare-datatypes ((array!91165 0))(
  ( (array!91166 (arr!44034 (Array (_ BitVec 32) ValueCell!17690)) (size!44585 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91165)

(declare-fun +!4744 (ListLongMap!21845 tuple2!24176) ListLongMap!21845)

(declare-fun getCurrentListMapNoExtraKeys!6467 (array!91163 array!91165 (_ BitVec 32) (_ BitVec 32) V!54673 V!54673 (_ BitVec 32) Int) ListLongMap!21845)

(declare-fun get!22265 (ValueCell!17690 V!54673) V!54673)

(declare-fun dynLambda!3781 (Int (_ BitVec 64)) V!54673)

(assert (=> b!1341157 (= lt!594049 (+!4744 (getCurrentListMapNoExtraKeys!6467 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24177 (select (arr!44033 _keys!1571) from!1960) (get!22265 (select (arr!44034 _values!1303) from!1960) (dynLambda!3781 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1341158 () Bool)

(declare-fun res!889811 () Bool)

(assert (=> b!1341158 (=> (not res!889811) (not e!763781))))

(assert (=> b!1341158 (= res!889811 (and (= (size!44585 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44584 _keys!1571) (size!44585 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57472 () Bool)

(declare-fun mapRes!57472 () Bool)

(declare-fun tp!109336 () Bool)

(declare-fun e!763778 () Bool)

(assert (=> mapNonEmpty!57472 (= mapRes!57472 (and tp!109336 e!763778))))

(declare-fun mapRest!57472 () (Array (_ BitVec 32) ValueCell!17690))

(declare-fun mapValue!57472 () ValueCell!17690)

(declare-fun mapKey!57472 () (_ BitVec 32))

(assert (=> mapNonEmpty!57472 (= (arr!44034 _values!1303) (store mapRest!57472 mapKey!57472 mapValue!57472))))

(declare-fun res!889809 () Bool)

(assert (=> start!113162 (=> (not res!889809) (not e!763781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113162 (= res!889809 (validMask!0 mask!1977))))

(assert (=> start!113162 e!763781))

(declare-fun tp_is_empty!37177 () Bool)

(assert (=> start!113162 tp_is_empty!37177))

(assert (=> start!113162 true))

(declare-fun array_inv!33113 (array!91163) Bool)

(assert (=> start!113162 (array_inv!33113 _keys!1571)))

(declare-fun e!763777 () Bool)

(declare-fun array_inv!33114 (array!91165) Bool)

(assert (=> start!113162 (and (array_inv!33114 _values!1303) e!763777)))

(assert (=> start!113162 tp!109337))

(declare-fun b!1341159 () Bool)

(declare-fun res!889807 () Bool)

(assert (=> b!1341159 (=> (not res!889807) (not e!763781))))

(declare-fun getCurrentListMap!5839 (array!91163 array!91165 (_ BitVec 32) (_ BitVec 32) V!54673 V!54673 (_ BitVec 32) Int) ListLongMap!21845)

(assert (=> b!1341159 (= res!889807 (contains!9050 (getCurrentListMap!5839 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1341160 () Bool)

(assert (=> b!1341160 (= e!763778 tp_is_empty!37177)))

(declare-fun b!1341161 () Bool)

(declare-fun res!889806 () Bool)

(assert (=> b!1341161 (=> (not res!889806) (not e!763781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91163 (_ BitVec 32)) Bool)

(assert (=> b!1341161 (= res!889806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57472 () Bool)

(assert (=> mapIsEmpty!57472 mapRes!57472))

(declare-fun b!1341162 () Bool)

(declare-fun res!889812 () Bool)

(assert (=> b!1341162 (=> (not res!889812) (not e!763781))))

(assert (=> b!1341162 (= res!889812 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44584 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341163 () Bool)

(declare-fun e!763780 () Bool)

(assert (=> b!1341163 (= e!763780 tp_is_empty!37177)))

(declare-fun b!1341164 () Bool)

(declare-fun res!889808 () Bool)

(assert (=> b!1341164 (=> (not res!889808) (not e!763781))))

(assert (=> b!1341164 (= res!889808 (not (= (select (arr!44033 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1341165 () Bool)

(assert (=> b!1341165 (= e!763777 (and e!763780 mapRes!57472))))

(declare-fun condMapEmpty!57472 () Bool)

(declare-fun mapDefault!57472 () ValueCell!17690)

