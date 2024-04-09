; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133792 () Bool)

(assert start!133792)

(declare-fun res!1069315 () Bool)

(declare-fun e!871706 () Bool)

(assert (=> start!133792 (=> (not res!1069315) (not e!871706))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133792 (= res!1069315 (validMask!0 mask!947))))

(assert (=> start!133792 e!871706))

(assert (=> start!133792 true))

(declare-datatypes ((array!104345 0))(
  ( (array!104346 (arr!50360 (Array (_ BitVec 32) (_ BitVec 64))) (size!50911 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104345)

(declare-fun array_inv!39065 (array!104345) Bool)

(assert (=> start!133792 (array_inv!39065 _keys!637)))

(declare-datatypes ((V!59997 0))(
  ( (V!59998 (val!19505 Int)) )
))
(declare-datatypes ((ValueCell!18391 0))(
  ( (ValueCellFull!18391 (v!22254 V!59997)) (EmptyCell!18391) )
))
(declare-datatypes ((array!104347 0))(
  ( (array!104348 (arr!50361 (Array (_ BitVec 32) ValueCell!18391)) (size!50912 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104347)

(declare-fun e!871702 () Bool)

(declare-fun array_inv!39066 (array!104347) Bool)

(assert (=> start!133792 (and (array_inv!39066 _values!487) e!871702)))

(declare-fun b!1563973 () Bool)

(declare-fun res!1069316 () Bool)

(assert (=> b!1563973 (=> (not res!1069316) (not e!871706))))

(declare-datatypes ((List!36712 0))(
  ( (Nil!36709) (Cons!36708 (h!38155 (_ BitVec 64)) (t!51566 List!36712)) )
))
(declare-fun arrayNoDuplicates!0 (array!104345 (_ BitVec 32) List!36712) Bool)

(assert (=> b!1563973 (= res!1069316 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36709))))

(declare-fun b!1563974 () Bool)

(declare-fun e!871704 () Bool)

(declare-fun tp_is_empty!38843 () Bool)

(assert (=> b!1563974 (= e!871704 tp_is_empty!38843)))

(declare-fun b!1563975 () Bool)

(declare-fun res!1069313 () Bool)

(assert (=> b!1563975 (=> (not res!1069313) (not e!871706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104345 (_ BitVec 32)) Bool)

(assert (=> b!1563975 (= res!1069313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563976 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1563976 (= e!871706 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50911 _keys!637)) (bvslt (bvsub (bvadd #b00000000000000000000000000000001 (size!50911 _keys!637)) from!782) #b00000000000000000000000000000000)))))

(declare-fun b!1563977 () Bool)

(declare-fun e!871703 () Bool)

(declare-fun mapRes!59640 () Bool)

(assert (=> b!1563977 (= e!871702 (and e!871703 mapRes!59640))))

(declare-fun condMapEmpty!59640 () Bool)

(declare-fun mapDefault!59640 () ValueCell!18391)

