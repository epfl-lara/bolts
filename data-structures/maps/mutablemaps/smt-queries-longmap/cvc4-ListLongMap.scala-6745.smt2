; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84580 () Bool)

(assert start!84580)

(declare-fun b_free!20033 () Bool)

(declare-fun b_next!20033 () Bool)

(assert (=> start!84580 (= b_free!20033 (not b_next!20033))))

(declare-fun tp!69887 () Bool)

(declare-fun b_and!32153 () Bool)

(assert (=> start!84580 (= tp!69887 b_and!32153)))

(declare-fun b!988757 () Bool)

(declare-fun e!557571 () Bool)

(declare-fun tp_is_empty!23249 () Bool)

(assert (=> b!988757 (= e!557571 tp_is_empty!23249)))

(declare-fun b!988758 () Bool)

(declare-fun res!661417 () Bool)

(declare-fun e!557570 () Bool)

(assert (=> b!988758 (=> (not res!661417) (not e!557570))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35981 0))(
  ( (V!35982 (val!11675 Int)) )
))
(declare-datatypes ((ValueCell!11143 0))(
  ( (ValueCellFull!11143 (v!14242 V!35981)) (EmptyCell!11143) )
))
(declare-datatypes ((array!62447 0))(
  ( (array!62448 (arr!30073 (Array (_ BitVec 32) ValueCell!11143)) (size!30553 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62447)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62449 0))(
  ( (array!62450 (arr!30074 (Array (_ BitVec 32) (_ BitVec 64))) (size!30554 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62449)

(assert (=> b!988758 (= res!661417 (and (= (size!30553 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30554 _keys!1544) (size!30553 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!988759 () Bool)

(declare-fun e!557572 () Bool)

(assert (=> b!988759 (= e!557570 e!557572)))

(declare-fun res!661420 () Bool)

(assert (=> b!988759 (=> (not res!661420) (not e!557572))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!988759 (= res!661420 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30074 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!438574 () V!35981)

(declare-fun get!15623 (ValueCell!11143 V!35981) V!35981)

(declare-fun dynLambda!1869 (Int (_ BitVec 64)) V!35981)

(assert (=> b!988759 (= lt!438574 (get!15623 (select (arr!30073 _values!1278) from!1932) (dynLambda!1869 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35981)

(declare-datatypes ((tuple2!14976 0))(
  ( (tuple2!14977 (_1!7498 (_ BitVec 64)) (_2!7498 V!35981)) )
))
(declare-datatypes ((List!20927 0))(
  ( (Nil!20924) (Cons!20923 (h!22085 tuple2!14976) (t!29880 List!20927)) )
))
(declare-datatypes ((ListLongMap!13687 0))(
  ( (ListLongMap!13688 (toList!6859 List!20927)) )
))
(declare-fun lt!438576 () ListLongMap!13687)

(declare-fun zeroValue!1220 () V!35981)

(declare-fun getCurrentListMapNoExtraKeys!3509 (array!62449 array!62447 (_ BitVec 32) (_ BitVec 32) V!35981 V!35981 (_ BitVec 32) Int) ListLongMap!13687)

(assert (=> b!988759 (= lt!438576 (getCurrentListMapNoExtraKeys!3509 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun res!661418 () Bool)

(assert (=> start!84580 (=> (not res!661418) (not e!557570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84580 (= res!661418 (validMask!0 mask!1948))))

(assert (=> start!84580 e!557570))

(assert (=> start!84580 true))

(assert (=> start!84580 tp_is_empty!23249))

(declare-fun e!557569 () Bool)

(declare-fun array_inv!23091 (array!62447) Bool)

(assert (=> start!84580 (and (array_inv!23091 _values!1278) e!557569)))

(assert (=> start!84580 tp!69887))

(declare-fun array_inv!23092 (array!62449) Bool)

(assert (=> start!84580 (array_inv!23092 _keys!1544)))

(declare-fun mapNonEmpty!36915 () Bool)

(declare-fun mapRes!36915 () Bool)

(declare-fun tp!69888 () Bool)

(assert (=> mapNonEmpty!36915 (= mapRes!36915 (and tp!69888 e!557571))))

(declare-fun mapValue!36915 () ValueCell!11143)

(declare-fun mapKey!36915 () (_ BitVec 32))

(declare-fun mapRest!36915 () (Array (_ BitVec 32) ValueCell!11143))

(assert (=> mapNonEmpty!36915 (= (arr!30073 _values!1278) (store mapRest!36915 mapKey!36915 mapValue!36915))))

(declare-fun b!988760 () Bool)

(declare-fun res!661419 () Bool)

(assert (=> b!988760 (=> (not res!661419) (not e!557570))))

(assert (=> b!988760 (= res!661419 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30554 _keys!1544))))))

(declare-fun b!988761 () Bool)

(declare-fun res!661413 () Bool)

(assert (=> b!988761 (=> (not res!661413) (not e!557570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!988761 (= res!661413 (validKeyInArray!0 (select (arr!30074 _keys!1544) from!1932)))))

(declare-fun b!988762 () Bool)

(declare-fun res!661415 () Bool)

(assert (=> b!988762 (=> (not res!661415) (not e!557570))))

(declare-datatypes ((List!20928 0))(
  ( (Nil!20925) (Cons!20924 (h!22086 (_ BitVec 64)) (t!29881 List!20928)) )
))
(declare-fun arrayNoDuplicates!0 (array!62449 (_ BitVec 32) List!20928) Bool)

(assert (=> b!988762 (= res!661415 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20925))))

(declare-fun b!988763 () Bool)

(assert (=> b!988763 (= e!557572 (not true))))

(declare-fun lt!438571 () ListLongMap!13687)

(declare-fun getCurrentListMap!3873 (array!62449 array!62447 (_ BitVec 32) (_ BitVec 32) V!35981 V!35981 (_ BitVec 32) Int) ListLongMap!13687)

(assert (=> b!988763 (= lt!438571 (getCurrentListMap!3873 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438572 () tuple2!14976)

(declare-fun lt!438575 () tuple2!14976)

(declare-fun +!3041 (ListLongMap!13687 tuple2!14976) ListLongMap!13687)

(assert (=> b!988763 (= (+!3041 (+!3041 lt!438576 lt!438572) lt!438575) (+!3041 (+!3041 lt!438576 lt!438575) lt!438572))))

(assert (=> b!988763 (= lt!438575 (tuple2!14977 (select (arr!30074 _keys!1544) from!1932) lt!438574))))

(assert (=> b!988763 (= lt!438572 (tuple2!14977 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32769 0))(
  ( (Unit!32770) )
))
(declare-fun lt!438573 () Unit!32769)

(declare-fun addCommutativeForDiffKeys!696 (ListLongMap!13687 (_ BitVec 64) V!35981 (_ BitVec 64) V!35981) Unit!32769)

(assert (=> b!988763 (= lt!438573 (addCommutativeForDiffKeys!696 lt!438576 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30074 _keys!1544) from!1932) lt!438574))))

(declare-fun b!988764 () Bool)

(declare-fun e!557574 () Bool)

(assert (=> b!988764 (= e!557569 (and e!557574 mapRes!36915))))

(declare-fun condMapEmpty!36915 () Bool)

(declare-fun mapDefault!36915 () ValueCell!11143)

