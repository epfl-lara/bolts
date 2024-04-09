; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112384 () Bool)

(assert start!112384)

(declare-fun b_free!30743 () Bool)

(declare-fun b_next!30743 () Bool)

(assert (=> start!112384 (= b_free!30743 (not b_next!30743))))

(declare-fun tp!107867 () Bool)

(declare-fun b_and!49551 () Bool)

(assert (=> start!112384 (= tp!107867 b_and!49551)))

(declare-fun b!1331578 () Bool)

(declare-fun res!883707 () Bool)

(declare-fun e!758749 () Bool)

(assert (=> b!1331578 (=> (not res!883707) (not e!758749))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1331578 (= res!883707 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!883715 () Bool)

(assert (=> start!112384 (=> (not res!883715) (not e!758749))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112384 (= res!883715 (validMask!0 mask!1998))))

(assert (=> start!112384 e!758749))

(declare-datatypes ((V!53973 0))(
  ( (V!53974 (val!18401 Int)) )
))
(declare-datatypes ((ValueCell!17428 0))(
  ( (ValueCellFull!17428 (v!21036 V!53973)) (EmptyCell!17428) )
))
(declare-datatypes ((array!90155 0))(
  ( (array!90156 (arr!43539 (Array (_ BitVec 32) ValueCell!17428)) (size!44090 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90155)

(declare-fun e!758747 () Bool)

(declare-fun array_inv!32795 (array!90155) Bool)

(assert (=> start!112384 (and (array_inv!32795 _values!1320) e!758747)))

(assert (=> start!112384 true))

(declare-datatypes ((array!90157 0))(
  ( (array!90158 (arr!43540 (Array (_ BitVec 32) (_ BitVec 64))) (size!44091 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90157)

(declare-fun array_inv!32796 (array!90157) Bool)

(assert (=> start!112384 (array_inv!32796 _keys!1590)))

(assert (=> start!112384 tp!107867))

(declare-fun tp_is_empty!36653 () Bool)

(assert (=> start!112384 tp_is_empty!36653))

(declare-fun b!1331579 () Bool)

(declare-fun e!758745 () Bool)

(assert (=> b!1331579 (= e!758745 tp_is_empty!36653)))

(declare-fun b!1331580 () Bool)

(assert (=> b!1331580 (= e!758749 (not true))))

(declare-datatypes ((tuple2!23852 0))(
  ( (tuple2!23853 (_1!11936 (_ BitVec 64)) (_2!11936 V!53973)) )
))
(declare-datatypes ((List!31036 0))(
  ( (Nil!31033) (Cons!31032 (h!32241 tuple2!23852) (t!45199 List!31036)) )
))
(declare-datatypes ((ListLongMap!21521 0))(
  ( (ListLongMap!21522 (toList!10776 List!31036)) )
))
(declare-fun lt!591584 () ListLongMap!21521)

(declare-fun minValue!1262 () V!53973)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8876 (ListLongMap!21521 (_ BitVec 64)) Bool)

(declare-fun +!4666 (ListLongMap!21521 tuple2!23852) ListLongMap!21521)

(assert (=> b!1331580 (contains!8876 (+!4666 lt!591584 (tuple2!23853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153)))

(declare-datatypes ((Unit!43759 0))(
  ( (Unit!43760) )
))
(declare-fun lt!591581 () Unit!43759)

(declare-fun addStillContains!1176 (ListLongMap!21521 (_ BitVec 64) V!53973 (_ BitVec 64)) Unit!43759)

(assert (=> b!1331580 (= lt!591581 (addStillContains!1176 lt!591584 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k!1153))))

(assert (=> b!1331580 (contains!8876 lt!591584 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!591582 () Unit!43759)

(declare-fun lt!591579 () V!53973)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!271 ((_ BitVec 64) (_ BitVec 64) V!53973 ListLongMap!21521) Unit!43759)

(assert (=> b!1331580 (= lt!591582 (lemmaInListMapAfterAddingDiffThenInBefore!271 k!1153 (select (arr!43540 _keys!1590) from!1980) lt!591579 lt!591584))))

(declare-fun lt!591583 () ListLongMap!21521)

(assert (=> b!1331580 (contains!8876 lt!591583 k!1153)))

(declare-fun lt!591580 () Unit!43759)

(assert (=> b!1331580 (= lt!591580 (lemmaInListMapAfterAddingDiffThenInBefore!271 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591583))))

(assert (=> b!1331580 (= lt!591583 (+!4666 lt!591584 (tuple2!23853 (select (arr!43540 _keys!1590) from!1980) lt!591579)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21998 (ValueCell!17428 V!53973) V!53973)

(declare-fun dynLambda!3703 (Int (_ BitVec 64)) V!53973)

(assert (=> b!1331580 (= lt!591579 (get!21998 (select (arr!43539 _values!1320) from!1980) (dynLambda!3703 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1262 () V!53973)

(declare-fun getCurrentListMapNoExtraKeys!6384 (array!90157 array!90155 (_ BitVec 32) (_ BitVec 32) V!53973 V!53973 (_ BitVec 32) Int) ListLongMap!21521)

(assert (=> b!1331580 (= lt!591584 (getCurrentListMapNoExtraKeys!6384 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331581 () Bool)

(declare-fun res!883714 () Bool)

(assert (=> b!1331581 (=> (not res!883714) (not e!758749))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331581 (= res!883714 (validKeyInArray!0 (select (arr!43540 _keys!1590) from!1980)))))

(declare-fun mapIsEmpty!56653 () Bool)

(declare-fun mapRes!56653 () Bool)

(assert (=> mapIsEmpty!56653 mapRes!56653))

(declare-fun b!1331582 () Bool)

(declare-fun res!883713 () Bool)

(assert (=> b!1331582 (=> (not res!883713) (not e!758749))))

(declare-datatypes ((List!31037 0))(
  ( (Nil!31034) (Cons!31033 (h!32242 (_ BitVec 64)) (t!45200 List!31037)) )
))
(declare-fun arrayNoDuplicates!0 (array!90157 (_ BitVec 32) List!31037) Bool)

(assert (=> b!1331582 (= res!883713 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31034))))

(declare-fun b!1331583 () Bool)

(declare-fun res!883709 () Bool)

(assert (=> b!1331583 (=> (not res!883709) (not e!758749))))

(declare-fun getCurrentListMap!5699 (array!90157 array!90155 (_ BitVec 32) (_ BitVec 32) V!53973 V!53973 (_ BitVec 32) Int) ListLongMap!21521)

(assert (=> b!1331583 (= res!883709 (contains!8876 (getCurrentListMap!5699 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1331584 () Bool)

(declare-fun e!758748 () Bool)

(assert (=> b!1331584 (= e!758748 tp_is_empty!36653)))

(declare-fun mapNonEmpty!56653 () Bool)

(declare-fun tp!107866 () Bool)

(assert (=> mapNonEmpty!56653 (= mapRes!56653 (and tp!107866 e!758748))))

(declare-fun mapKey!56653 () (_ BitVec 32))

(declare-fun mapValue!56653 () ValueCell!17428)

(declare-fun mapRest!56653 () (Array (_ BitVec 32) ValueCell!17428))

(assert (=> mapNonEmpty!56653 (= (arr!43539 _values!1320) (store mapRest!56653 mapKey!56653 mapValue!56653))))

(declare-fun b!1331585 () Bool)

(declare-fun res!883712 () Bool)

(assert (=> b!1331585 (=> (not res!883712) (not e!758749))))

(assert (=> b!1331585 (= res!883712 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44091 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1331586 () Bool)

(declare-fun res!883711 () Bool)

(assert (=> b!1331586 (=> (not res!883711) (not e!758749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90157 (_ BitVec 32)) Bool)

(assert (=> b!1331586 (= res!883711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331587 () Bool)

(declare-fun res!883708 () Bool)

(assert (=> b!1331587 (=> (not res!883708) (not e!758749))))

(assert (=> b!1331587 (= res!883708 (not (= (select (arr!43540 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1331588 () Bool)

(assert (=> b!1331588 (= e!758747 (and e!758745 mapRes!56653))))

(declare-fun condMapEmpty!56653 () Bool)

(declare-fun mapDefault!56653 () ValueCell!17428)

