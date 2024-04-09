; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84582 () Bool)

(assert start!84582)

(declare-fun b_free!20035 () Bool)

(declare-fun b_next!20035 () Bool)

(assert (=> start!84582 (= b_free!20035 (not b_next!20035))))

(declare-fun tp!69893 () Bool)

(declare-fun b_and!32157 () Bool)

(assert (=> start!84582 (= tp!69893 b_and!32157)))

(declare-fun b!988793 () Bool)

(declare-fun res!661443 () Bool)

(declare-fun e!557588 () Bool)

(assert (=> b!988793 (=> (not res!661443) (not e!557588))))

(declare-datatypes ((array!62451 0))(
  ( (array!62452 (arr!30075 (Array (_ BitVec 32) (_ BitVec 64))) (size!30555 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62451)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62451 (_ BitVec 32)) Bool)

(assert (=> b!988793 (= res!661443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36918 () Bool)

(declare-fun mapRes!36918 () Bool)

(declare-fun tp!69894 () Bool)

(declare-fun e!557587 () Bool)

(assert (=> mapNonEmpty!36918 (= mapRes!36918 (and tp!69894 e!557587))))

(declare-fun mapKey!36918 () (_ BitVec 32))

(declare-datatypes ((V!35985 0))(
  ( (V!35986 (val!11676 Int)) )
))
(declare-datatypes ((ValueCell!11144 0))(
  ( (ValueCellFull!11144 (v!14243 V!35985)) (EmptyCell!11144) )
))
(declare-datatypes ((array!62453 0))(
  ( (array!62454 (arr!30076 (Array (_ BitVec 32) ValueCell!11144)) (size!30556 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62453)

(declare-fun mapValue!36918 () ValueCell!11144)

(declare-fun mapRest!36918 () (Array (_ BitVec 32) ValueCell!11144))

(assert (=> mapNonEmpty!36918 (= (arr!30076 _values!1278) (store mapRest!36918 mapKey!36918 mapValue!36918))))

(declare-fun b!988794 () Bool)

(declare-fun e!557590 () Bool)

(assert (=> b!988794 (= e!557588 e!557590)))

(declare-fun res!661441 () Bool)

(assert (=> b!988794 (=> (not res!661441) (not e!557590))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!988794 (= res!661441 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30075 _keys!1544) from!1932))))))

(declare-fun lt!438591 () V!35985)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15626 (ValueCell!11144 V!35985) V!35985)

(declare-fun dynLambda!1870 (Int (_ BitVec 64)) V!35985)

(assert (=> b!988794 (= lt!438591 (get!15626 (select (arr!30076 _values!1278) from!1932) (dynLambda!1870 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35985)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((tuple2!14978 0))(
  ( (tuple2!14979 (_1!7499 (_ BitVec 64)) (_2!7499 V!35985)) )
))
(declare-datatypes ((List!20929 0))(
  ( (Nil!20926) (Cons!20925 (h!22087 tuple2!14978) (t!29884 List!20929)) )
))
(declare-datatypes ((ListLongMap!13689 0))(
  ( (ListLongMap!13690 (toList!6860 List!20929)) )
))
(declare-fun lt!438589 () ListLongMap!13689)

(declare-fun zeroValue!1220 () V!35985)

(declare-fun getCurrentListMapNoExtraKeys!3510 (array!62451 array!62453 (_ BitVec 32) (_ BitVec 32) V!35985 V!35985 (_ BitVec 32) Int) ListLongMap!13689)

(assert (=> b!988794 (= lt!438589 (getCurrentListMapNoExtraKeys!3510 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!988795 () Bool)

(declare-fun res!661444 () Bool)

(assert (=> b!988795 (=> (not res!661444) (not e!557588))))

(assert (=> b!988795 (= res!661444 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30555 _keys!1544))))))

(declare-fun b!988796 () Bool)

(declare-fun tp_is_empty!23251 () Bool)

(assert (=> b!988796 (= e!557587 tp_is_empty!23251)))

(declare-fun b!988792 () Bool)

(assert (=> b!988792 (= e!557590 (not (bvslt from!1932 (size!30556 _values!1278))))))

(declare-fun lt!438590 () ListLongMap!13689)

(declare-fun getCurrentListMap!3874 (array!62451 array!62453 (_ BitVec 32) (_ BitVec 32) V!35985 V!35985 (_ BitVec 32) Int) ListLongMap!13689)

(assert (=> b!988792 (= lt!438590 (getCurrentListMap!3874 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438594 () tuple2!14978)

(declare-fun lt!438593 () tuple2!14978)

(declare-fun +!3042 (ListLongMap!13689 tuple2!14978) ListLongMap!13689)

(assert (=> b!988792 (= (+!3042 (+!3042 lt!438589 lt!438594) lt!438593) (+!3042 (+!3042 lt!438589 lt!438593) lt!438594))))

(assert (=> b!988792 (= lt!438593 (tuple2!14979 (select (arr!30075 _keys!1544) from!1932) lt!438591))))

(assert (=> b!988792 (= lt!438594 (tuple2!14979 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32771 0))(
  ( (Unit!32772) )
))
(declare-fun lt!438592 () Unit!32771)

(declare-fun addCommutativeForDiffKeys!697 (ListLongMap!13689 (_ BitVec 64) V!35985 (_ BitVec 64) V!35985) Unit!32771)

(assert (=> b!988792 (= lt!438592 (addCommutativeForDiffKeys!697 lt!438589 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30075 _keys!1544) from!1932) lt!438591))))

(declare-fun res!661439 () Bool)

(assert (=> start!84582 (=> (not res!661439) (not e!557588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84582 (= res!661439 (validMask!0 mask!1948))))

(assert (=> start!84582 e!557588))

(assert (=> start!84582 true))

(assert (=> start!84582 tp_is_empty!23251))

(declare-fun e!557592 () Bool)

(declare-fun array_inv!23093 (array!62453) Bool)

(assert (=> start!84582 (and (array_inv!23093 _values!1278) e!557592)))

(assert (=> start!84582 tp!69893))

(declare-fun array_inv!23094 (array!62451) Bool)

(assert (=> start!84582 (array_inv!23094 _keys!1544)))

(declare-fun b!988797 () Bool)

(declare-fun e!557591 () Bool)

(assert (=> b!988797 (= e!557591 tp_is_empty!23251)))

(declare-fun b!988798 () Bool)

(assert (=> b!988798 (= e!557592 (and e!557591 mapRes!36918))))

(declare-fun condMapEmpty!36918 () Bool)

(declare-fun mapDefault!36918 () ValueCell!11144)

