; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100250 () Bool)

(assert start!100250)

(declare-fun b!1194983 () Bool)

(declare-fun res!795202 () Bool)

(declare-fun e!679132 () Bool)

(assert (=> b!1194983 (=> (not res!795202) (not e!679132))))

(declare-datatypes ((array!77326 0))(
  ( (array!77327 (arr!37306 (Array (_ BitVec 32) (_ BitVec 64))) (size!37843 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77326)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45501 0))(
  ( (V!45502 (val!15197 Int)) )
))
(declare-datatypes ((ValueCell!14431 0))(
  ( (ValueCellFull!14431 (v!17836 V!45501)) (EmptyCell!14431) )
))
(declare-datatypes ((array!77328 0))(
  ( (array!77329 (arr!37307 (Array (_ BitVec 32) ValueCell!14431)) (size!37844 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77328)

(assert (=> b!1194983 (= res!795202 (and (= (size!37844 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37843 _keys!1208) (size!37844 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1194984 () Bool)

(declare-fun res!795210 () Bool)

(assert (=> b!1194984 (=> (not res!795210) (not e!679132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77326 (_ BitVec 32)) Bool)

(assert (=> b!1194984 (= res!795210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1194985 () Bool)

(declare-fun e!679127 () Bool)

(declare-fun e!679131 () Bool)

(declare-fun mapRes!47258 () Bool)

(assert (=> b!1194985 (= e!679127 (and e!679131 mapRes!47258))))

(declare-fun condMapEmpty!47258 () Bool)

(declare-fun mapDefault!47258 () ValueCell!14431)

