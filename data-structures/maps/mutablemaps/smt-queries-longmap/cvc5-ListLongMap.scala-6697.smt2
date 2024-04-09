; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84182 () Bool)

(assert start!84182)

(declare-fun b_free!19855 () Bool)

(declare-fun b_next!19855 () Bool)

(assert (=> start!84182 (= b_free!19855 (not b_next!19855))))

(declare-fun tp!69169 () Bool)

(declare-fun b_and!31805 () Bool)

(assert (=> start!84182 (= tp!69169 b_and!31805)))

(declare-fun b!983852 () Bool)

(declare-fun res!658451 () Bool)

(declare-fun e!554690 () Bool)

(assert (=> b!983852 (=> (not res!658451) (not e!554690))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35593 0))(
  ( (V!35594 (val!11529 Int)) )
))
(declare-datatypes ((ValueCell!10997 0))(
  ( (ValueCellFull!10997 (v!14091 V!35593)) (EmptyCell!10997) )
))
(declare-datatypes ((array!61883 0))(
  ( (array!61884 (arr!29795 (Array (_ BitVec 32) ValueCell!10997)) (size!30275 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61883)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61885 0))(
  ( (array!61886 (arr!29796 (Array (_ BitVec 32) (_ BitVec 64))) (size!30276 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61885)

(assert (=> b!983852 (= res!658451 (and (= (size!30275 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30276 _keys!1544) (size!30275 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!658449 () Bool)

(assert (=> start!84182 (=> (not res!658449) (not e!554690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84182 (= res!658449 (validMask!0 mask!1948))))

(assert (=> start!84182 e!554690))

(assert (=> start!84182 true))

(declare-fun tp_is_empty!22957 () Bool)

(assert (=> start!84182 tp_is_empty!22957))

(declare-fun e!554688 () Bool)

(declare-fun array_inv!22905 (array!61883) Bool)

(assert (=> start!84182 (and (array_inv!22905 _values!1278) e!554688)))

(assert (=> start!84182 tp!69169))

(declare-fun array_inv!22906 (array!61885) Bool)

(assert (=> start!84182 (array_inv!22906 _keys!1544)))

(declare-fun b!983853 () Bool)

(declare-fun e!554685 () Bool)

(assert (=> b!983853 (= e!554690 e!554685)))

(declare-fun res!658452 () Bool)

(assert (=> b!983853 (=> (not res!658452) (not e!554685))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!983853 (= res!658452 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29796 _keys!1544) from!1932))))))

(declare-fun lt!436573 () V!35593)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15475 (ValueCell!10997 V!35593) V!35593)

(declare-fun dynLambda!1822 (Int (_ BitVec 64)) V!35593)

(assert (=> b!983853 (= lt!436573 (get!15475 (select (arr!29795 _values!1278) from!1932) (dynLambda!1822 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35593)

(declare-fun zeroValue!1220 () V!35593)

(declare-datatypes ((tuple2!14842 0))(
  ( (tuple2!14843 (_1!7431 (_ BitVec 64)) (_2!7431 V!35593)) )
))
(declare-datatypes ((List!20763 0))(
  ( (Nil!20760) (Cons!20759 (h!21921 tuple2!14842) (t!29570 List!20763)) )
))
(declare-datatypes ((ListLongMap!13553 0))(
  ( (ListLongMap!13554 (toList!6792 List!20763)) )
))
(declare-fun lt!436572 () ListLongMap!13553)

(declare-fun getCurrentListMapNoExtraKeys!3451 (array!61885 array!61883 (_ BitVec 32) (_ BitVec 32) V!35593 V!35593 (_ BitVec 32) Int) ListLongMap!13553)

(assert (=> b!983853 (= lt!436572 (getCurrentListMapNoExtraKeys!3451 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!983854 () Bool)

(declare-fun res!658446 () Bool)

(assert (=> b!983854 (=> (not res!658446) (not e!554690))))

(assert (=> b!983854 (= res!658446 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30276 _keys!1544))))))

(declare-fun b!983855 () Bool)

(declare-fun res!658445 () Bool)

(assert (=> b!983855 (=> (not res!658445) (not e!554690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!983855 (= res!658445 (validKeyInArray!0 (select (arr!29796 _keys!1544) from!1932)))))

(declare-fun b!983856 () Bool)

(declare-fun e!554686 () Bool)

(declare-fun mapRes!36464 () Bool)

(assert (=> b!983856 (= e!554688 (and e!554686 mapRes!36464))))

(declare-fun condMapEmpty!36464 () Bool)

(declare-fun mapDefault!36464 () ValueCell!10997)

