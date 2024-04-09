; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84278 () Bool)

(assert start!84278)

(declare-fun b_free!19951 () Bool)

(declare-fun b_next!19951 () Bool)

(assert (=> start!84278 (= b_free!19951 (not b_next!19951))))

(declare-fun tp!69457 () Bool)

(declare-fun b_and!31997 () Bool)

(assert (=> start!84278 (= tp!69457 b_and!31997)))

(declare-fun mapIsEmpty!36608 () Bool)

(declare-fun mapRes!36608 () Bool)

(assert (=> mapIsEmpty!36608 mapRes!36608))

(declare-fun mapNonEmpty!36608 () Bool)

(declare-fun tp!69458 () Bool)

(declare-fun e!555549 () Bool)

(assert (=> mapNonEmpty!36608 (= mapRes!36608 (and tp!69458 e!555549))))

(declare-datatypes ((V!35721 0))(
  ( (V!35722 (val!11577 Int)) )
))
(declare-datatypes ((ValueCell!11045 0))(
  ( (ValueCellFull!11045 (v!14139 V!35721)) (EmptyCell!11045) )
))
(declare-datatypes ((array!62071 0))(
  ( (array!62072 (arr!29889 (Array (_ BitVec 32) ValueCell!11045)) (size!30369 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62071)

(declare-fun mapRest!36608 () (Array (_ BitVec 32) ValueCell!11045))

(declare-fun mapValue!36608 () ValueCell!11045)

(declare-fun mapKey!36608 () (_ BitVec 32))

(assert (=> mapNonEmpty!36608 (= (arr!29889 _values!1278) (store mapRest!36608 mapKey!36608 mapValue!36608))))

(declare-fun b!985532 () Bool)

(declare-fun res!659600 () Bool)

(declare-fun e!555552 () Bool)

(assert (=> b!985532 (=> (not res!659600) (not e!555552))))

(declare-datatypes ((array!62073 0))(
  ( (array!62074 (arr!29890 (Array (_ BitVec 32) (_ BitVec 64))) (size!30370 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62073)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62073 (_ BitVec 32)) Bool)

(assert (=> b!985532 (= res!659600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985533 () Bool)

(declare-fun e!555553 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!985533 (= e!555553 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!14914 0))(
  ( (tuple2!14915 (_1!7467 (_ BitVec 64)) (_2!7467 V!35721)) )
))
(declare-datatypes ((List!20832 0))(
  ( (Nil!20829) (Cons!20828 (h!21990 tuple2!14914) (t!29735 List!20832)) )
))
(declare-datatypes ((ListLongMap!13625 0))(
  ( (ListLongMap!13626 (toList!6828 List!20832)) )
))
(declare-fun lt!437292 () ListLongMap!13625)

(declare-fun lt!437293 () tuple2!14914)

(declare-fun lt!437295 () tuple2!14914)

(declare-fun +!3016 (ListLongMap!13625 tuple2!14914) ListLongMap!13625)

(assert (=> b!985533 (= (+!3016 (+!3016 lt!437292 lt!437293) lt!437295) (+!3016 (+!3016 lt!437292 lt!437295) lt!437293))))

(declare-fun lt!437294 () V!35721)

(assert (=> b!985533 (= lt!437295 (tuple2!14915 (select (arr!29890 _keys!1544) from!1932) lt!437294))))

(declare-fun minValue!1220 () V!35721)

(assert (=> b!985533 (= lt!437293 (tuple2!14915 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32707 0))(
  ( (Unit!32708) )
))
(declare-fun lt!437296 () Unit!32707)

(declare-fun addCommutativeForDiffKeys!678 (ListLongMap!13625 (_ BitVec 64) V!35721 (_ BitVec 64) V!35721) Unit!32707)

(assert (=> b!985533 (= lt!437296 (addCommutativeForDiffKeys!678 lt!437292 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29890 _keys!1544) from!1932) lt!437294))))

(declare-fun b!985534 () Bool)

(declare-fun res!659604 () Bool)

(assert (=> b!985534 (=> (not res!659604) (not e!555552))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985534 (= res!659604 (validKeyInArray!0 (select (arr!29890 _keys!1544) from!1932)))))

(declare-fun b!985535 () Bool)

(declare-fun res!659597 () Bool)

(assert (=> b!985535 (=> (not res!659597) (not e!555552))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985535 (= res!659597 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!659603 () Bool)

(assert (=> start!84278 (=> (not res!659603) (not e!555552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84278 (= res!659603 (validMask!0 mask!1948))))

(assert (=> start!84278 e!555552))

(assert (=> start!84278 true))

(declare-fun tp_is_empty!23053 () Bool)

(assert (=> start!84278 tp_is_empty!23053))

(declare-fun e!555550 () Bool)

(declare-fun array_inv!22969 (array!62071) Bool)

(assert (=> start!84278 (and (array_inv!22969 _values!1278) e!555550)))

(assert (=> start!84278 tp!69457))

(declare-fun array_inv!22970 (array!62073) Bool)

(assert (=> start!84278 (array_inv!22970 _keys!1544)))

(declare-fun b!985536 () Bool)

(declare-fun res!659602 () Bool)

(assert (=> b!985536 (=> (not res!659602) (not e!555552))))

(assert (=> b!985536 (= res!659602 (and (= (size!30369 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30370 _keys!1544) (size!30369 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985537 () Bool)

(assert (=> b!985537 (= e!555549 tp_is_empty!23053)))

(declare-fun b!985538 () Bool)

(declare-fun e!555551 () Bool)

(assert (=> b!985538 (= e!555551 tp_is_empty!23053)))

(declare-fun b!985539 () Bool)

(assert (=> b!985539 (= e!555550 (and e!555551 mapRes!36608))))

(declare-fun condMapEmpty!36608 () Bool)

(declare-fun mapDefault!36608 () ValueCell!11045)

