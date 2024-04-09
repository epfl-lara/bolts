; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101812 () Bool)

(assert start!101812)

(declare-fun b_free!26465 () Bool)

(declare-fun b_next!26465 () Bool)

(assert (=> start!101812 (= b_free!26465 (not b_next!26465))))

(declare-fun tp!92442 () Bool)

(declare-fun b_and!44201 () Bool)

(assert (=> start!101812 (= tp!92442 b_and!44201)))

(declare-fun b!1225724 () Bool)

(declare-fun e!696196 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((V!46685 0))(
  ( (V!46686 (val!15641 Int)) )
))
(declare-datatypes ((ValueCell!14875 0))(
  ( (ValueCellFull!14875 (v!18304 V!46685)) (EmptyCell!14875) )
))
(declare-datatypes ((array!79096 0))(
  ( (array!79097 (arr!38171 (Array (_ BitVec 32) ValueCell!14875)) (size!38708 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79096)

(assert (=> b!1225724 (= e!696196 (bvslt i!673 (size!38708 _values!996)))))

(declare-fun mapNonEmpty!48652 () Bool)

(declare-fun mapRes!48652 () Bool)

(declare-fun tp!92441 () Bool)

(declare-fun e!696200 () Bool)

(assert (=> mapNonEmpty!48652 (= mapRes!48652 (and tp!92441 e!696200))))

(declare-fun mapValue!48652 () ValueCell!14875)

(declare-fun mapRest!48652 () (Array (_ BitVec 32) ValueCell!14875))

(declare-fun mapKey!48652 () (_ BitVec 32))

(assert (=> mapNonEmpty!48652 (= (arr!38171 _values!996) (store mapRest!48652 mapKey!48652 mapValue!48652))))

(declare-fun b!1225725 () Bool)

(declare-fun res!814671 () Bool)

(declare-fun e!696193 () Bool)

(assert (=> b!1225725 (=> (not res!814671) (not e!696193))))

(declare-datatypes ((array!79098 0))(
  ( (array!79099 (arr!38172 (Array (_ BitVec 32) (_ BitVec 64))) (size!38709 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79098)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1225725 (= res!814671 (= (select (arr!38172 _keys!1208) i!673) k!934))))

(declare-fun res!814672 () Bool)

(assert (=> start!101812 (=> (not res!814672) (not e!696193))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101812 (= res!814672 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38709 _keys!1208))))))

(assert (=> start!101812 e!696193))

(declare-fun tp_is_empty!31169 () Bool)

(assert (=> start!101812 tp_is_empty!31169))

(declare-fun array_inv!28948 (array!79098) Bool)

(assert (=> start!101812 (array_inv!28948 _keys!1208)))

(assert (=> start!101812 true))

(assert (=> start!101812 tp!92442))

(declare-fun e!696194 () Bool)

(declare-fun array_inv!28949 (array!79096) Bool)

(assert (=> start!101812 (and (array_inv!28949 _values!996) e!696194)))

(declare-fun b!1225726 () Bool)

(declare-fun res!814679 () Bool)

(assert (=> b!1225726 (=> (not res!814679) (not e!696193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225726 (= res!814679 (validKeyInArray!0 k!934))))

(declare-fun b!1225727 () Bool)

(assert (=> b!1225727 (= e!696200 tp_is_empty!31169)))

(declare-fun b!1225728 () Bool)

(declare-fun res!814678 () Bool)

(assert (=> b!1225728 (=> (not res!814678) (not e!696193))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79098 (_ BitVec 32)) Bool)

(assert (=> b!1225728 (= res!814678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225729 () Bool)

(declare-fun res!814677 () Bool)

(assert (=> b!1225729 (=> (not res!814677) (not e!696193))))

(assert (=> b!1225729 (= res!814677 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38709 _keys!1208))))))

(declare-fun mapIsEmpty!48652 () Bool)

(assert (=> mapIsEmpty!48652 mapRes!48652))

(declare-fun b!1225730 () Bool)

(declare-fun e!696197 () Bool)

(assert (=> b!1225730 (= e!696193 e!696197)))

(declare-fun res!814673 () Bool)

(assert (=> b!1225730 (=> (not res!814673) (not e!696197))))

(declare-fun lt!558522 () array!79098)

(assert (=> b!1225730 (= res!814673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558522 mask!1564))))

(assert (=> b!1225730 (= lt!558522 (array!79099 (store (arr!38172 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38709 _keys!1208)))))

(declare-fun b!1225731 () Bool)

(declare-fun res!814675 () Bool)

(assert (=> b!1225731 (=> (not res!814675) (not e!696193))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1225731 (= res!814675 (and (= (size!38708 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38709 _keys!1208) (size!38708 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225732 () Bool)

(declare-fun res!814683 () Bool)

(assert (=> b!1225732 (=> (not res!814683) (not e!696197))))

(declare-datatypes ((List!27123 0))(
  ( (Nil!27120) (Cons!27119 (h!28328 (_ BitVec 64)) (t!40575 List!27123)) )
))
(declare-fun arrayNoDuplicates!0 (array!79098 (_ BitVec 32) List!27123) Bool)

(assert (=> b!1225732 (= res!814683 (arrayNoDuplicates!0 lt!558522 #b00000000000000000000000000000000 Nil!27120))))

(declare-fun b!1225733 () Bool)

(declare-fun e!696199 () Bool)

(assert (=> b!1225733 (= e!696194 (and e!696199 mapRes!48652))))

(declare-fun condMapEmpty!48652 () Bool)

(declare-fun mapDefault!48652 () ValueCell!14875)

