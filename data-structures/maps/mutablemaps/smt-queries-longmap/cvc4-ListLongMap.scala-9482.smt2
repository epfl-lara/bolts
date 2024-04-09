; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112540 () Bool)

(assert start!112540)

(declare-fun b_free!30899 () Bool)

(declare-fun b_next!30899 () Bool)

(assert (=> start!112540 (= b_free!30899 (not b_next!30899))))

(declare-fun tp!108334 () Bool)

(declare-fun b_and!49809 () Bool)

(assert (=> start!112540 (= tp!108334 b_and!49809)))

(declare-fun b!1334333 () Bool)

(declare-fun res!885662 () Bool)

(declare-fun e!759990 () Bool)

(assert (=> b!1334333 (=> (not res!885662) (not e!759990))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1334333 (= res!885662 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1334334 () Bool)

(declare-fun res!885661 () Bool)

(assert (=> b!1334334 (=> (not res!885661) (not e!759990))))

(declare-datatypes ((array!90463 0))(
  ( (array!90464 (arr!43693 (Array (_ BitVec 32) (_ BitVec 64))) (size!44244 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90463)

(declare-datatypes ((List!31155 0))(
  ( (Nil!31152) (Cons!31151 (h!32360 (_ BitVec 64)) (t!45420 List!31155)) )
))
(declare-fun arrayNoDuplicates!0 (array!90463 (_ BitVec 32) List!31155) Bool)

(assert (=> b!1334334 (= res!885661 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31152))))

(declare-fun b!1334335 () Bool)

(declare-fun res!885664 () Bool)

(assert (=> b!1334335 (=> (not res!885664) (not e!759990))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1334335 (= res!885664 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44244 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334336 () Bool)

(declare-fun e!759988 () Bool)

(assert (=> b!1334336 (= e!759988 (not true))))

(declare-datatypes ((V!54181 0))(
  ( (V!54182 (val!18479 Int)) )
))
(declare-datatypes ((tuple2!23984 0))(
  ( (tuple2!23985 (_1!12002 (_ BitVec 64)) (_2!12002 V!54181)) )
))
(declare-datatypes ((List!31156 0))(
  ( (Nil!31153) (Cons!31152 (h!32361 tuple2!23984) (t!45421 List!31156)) )
))
(declare-datatypes ((ListLongMap!21653 0))(
  ( (ListLongMap!21654 (toList!10842 List!31156)) )
))
(declare-fun lt!592267 () ListLongMap!21653)

(declare-fun contains!8942 (ListLongMap!21653 (_ BitVec 64)) Bool)

(assert (=> b!1334336 (contains!8942 lt!592267 k!1153)))

(declare-fun lt!592266 () V!54181)

(declare-datatypes ((Unit!43825 0))(
  ( (Unit!43826) )
))
(declare-fun lt!592268 () Unit!43825)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!304 ((_ BitVec 64) (_ BitVec 64) V!54181 ListLongMap!21653) Unit!43825)

(assert (=> b!1334336 (= lt!592268 (lemmaInListMapAfterAddingDiffThenInBefore!304 k!1153 (select (arr!43693 _keys!1590) from!1980) lt!592266 lt!592267))))

(declare-fun b!1334337 () Bool)

(declare-fun res!885668 () Bool)

(assert (=> b!1334337 (=> (not res!885668) (not e!759990))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1334337 (= res!885668 (validKeyInArray!0 (select (arr!43693 _keys!1590) from!1980)))))

(declare-fun b!1334338 () Bool)

(declare-fun e!759991 () Bool)

(declare-fun tp_is_empty!36809 () Bool)

(assert (=> b!1334338 (= e!759991 tp_is_empty!36809)))

(declare-fun b!1334340 () Bool)

(declare-fun res!885667 () Bool)

(assert (=> b!1334340 (=> (not res!885667) (not e!759990))))

(assert (=> b!1334340 (= res!885667 (not (= (select (arr!43693 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1334341 () Bool)

(declare-fun e!759987 () Bool)

(declare-fun mapRes!56887 () Bool)

(assert (=> b!1334341 (= e!759987 (and e!759991 mapRes!56887))))

(declare-fun condMapEmpty!56887 () Bool)

(declare-datatypes ((ValueCell!17506 0))(
  ( (ValueCellFull!17506 (v!21114 V!54181)) (EmptyCell!17506) )
))
(declare-datatypes ((array!90465 0))(
  ( (array!90466 (arr!43694 (Array (_ BitVec 32) ValueCell!17506)) (size!44245 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90465)

(declare-fun mapDefault!56887 () ValueCell!17506)

