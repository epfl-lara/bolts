; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84168 () Bool)

(assert start!84168)

(declare-fun b!983626 () Bool)

(declare-fun res!658291 () Bool)

(declare-fun e!554571 () Bool)

(assert (=> b!983626 (=> (not res!658291) (not e!554571))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61857 0))(
  ( (array!61858 (arr!29782 (Array (_ BitVec 32) (_ BitVec 64))) (size!30262 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61857)

(assert (=> b!983626 (= res!658291 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30262 _keys!1544))))))

(declare-fun res!658290 () Bool)

(assert (=> start!84168 (=> (not res!658290) (not e!554571))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84168 (= res!658290 (validMask!0 mask!1948))))

(assert (=> start!84168 e!554571))

(assert (=> start!84168 true))

(declare-datatypes ((V!35573 0))(
  ( (V!35574 (val!11522 Int)) )
))
(declare-datatypes ((ValueCell!10990 0))(
  ( (ValueCellFull!10990 (v!14084 V!35573)) (EmptyCell!10990) )
))
(declare-datatypes ((array!61859 0))(
  ( (array!61860 (arr!29783 (Array (_ BitVec 32) ValueCell!10990)) (size!30263 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61859)

(declare-fun e!554573 () Bool)

(declare-fun array_inv!22895 (array!61859) Bool)

(assert (=> start!84168 (and (array_inv!22895 _values!1278) e!554573)))

(declare-fun array_inv!22896 (array!61857) Bool)

(assert (=> start!84168 (array_inv!22896 _keys!1544)))

(declare-fun b!983627 () Bool)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983627 (= e!554571 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-fun b!983628 () Bool)

(declare-fun res!658289 () Bool)

(assert (=> b!983628 (=> (not res!658289) (not e!554571))))

(declare-datatypes ((List!20753 0))(
  ( (Nil!20750) (Cons!20749 (h!21911 (_ BitVec 64)) (t!29552 List!20753)) )
))
(declare-fun arrayNoDuplicates!0 (array!61857 (_ BitVec 32) List!20753) Bool)

(assert (=> b!983628 (= res!658289 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20750))))

(declare-fun b!983629 () Bool)

(declare-fun e!554569 () Bool)

(declare-fun tp_is_empty!22943 () Bool)

(assert (=> b!983629 (= e!554569 tp_is_empty!22943)))

(declare-fun b!983630 () Bool)

(declare-fun res!658288 () Bool)

(assert (=> b!983630 (=> (not res!658288) (not e!554571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61857 (_ BitVec 32)) Bool)

(assert (=> b!983630 (= res!658288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!983631 () Bool)

(declare-fun res!658292 () Bool)

(assert (=> b!983631 (=> (not res!658292) (not e!554571))))

(assert (=> b!983631 (= res!658292 (and (= (size!30263 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30262 _keys!1544) (size!30263 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983632 () Bool)

(declare-fun res!658293 () Bool)

(assert (=> b!983632 (=> (not res!658293) (not e!554571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!983632 (= res!658293 (validKeyInArray!0 (select (arr!29782 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36443 () Bool)

(declare-fun mapRes!36443 () Bool)

(assert (=> mapIsEmpty!36443 mapRes!36443))

(declare-fun b!983633 () Bool)

(assert (=> b!983633 (= e!554573 (and e!554569 mapRes!36443))))

(declare-fun condMapEmpty!36443 () Bool)

(declare-fun mapDefault!36443 () ValueCell!10990)

