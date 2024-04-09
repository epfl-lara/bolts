; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82020 () Bool)

(assert start!82020)

(declare-fun mapNonEmpty!33508 () Bool)

(declare-fun mapRes!33508 () Bool)

(declare-fun tp!64087 () Bool)

(declare-fun e!538787 () Bool)

(assert (=> mapNonEmpty!33508 (= mapRes!33508 (and tp!64087 e!538787))))

(declare-datatypes ((V!33025 0))(
  ( (V!33026 (val!10566 Int)) )
))
(declare-datatypes ((ValueCell!10034 0))(
  ( (ValueCellFull!10034 (v!13121 V!33025)) (EmptyCell!10034) )
))
(declare-fun mapRest!33508 () (Array (_ BitVec 32) ValueCell!10034))

(declare-datatypes ((array!58181 0))(
  ( (array!58182 (arr!27966 (Array (_ BitVec 32) ValueCell!10034)) (size!28446 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58181)

(declare-fun mapValue!33508 () ValueCell!10034)

(declare-fun mapKey!33508 () (_ BitVec 32))

(assert (=> mapNonEmpty!33508 (= (arr!27966 _values!1197) (store mapRest!33508 mapKey!33508 mapValue!33508))))

(declare-fun b!956161 () Bool)

(declare-fun res!640349 () Bool)

(declare-fun e!538788 () Bool)

(assert (=> b!956161 (=> (not res!640349) (not e!538788))))

(declare-datatypes ((array!58183 0))(
  ( (array!58184 (arr!27967 (Array (_ BitVec 32) (_ BitVec 64))) (size!28447 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58183)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58183 (_ BitVec 32)) Bool)

(assert (=> b!956161 (= res!640349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956162 () Bool)

(declare-fun tp_is_empty!21031 () Bool)

(assert (=> b!956162 (= e!538787 tp_is_empty!21031)))

(declare-fun b!956163 () Bool)

(assert (=> b!956163 (= e!538788 false)))

(declare-fun lt!430069 () Bool)

(declare-datatypes ((List!19621 0))(
  ( (Nil!19618) (Cons!19617 (h!20779 (_ BitVec 64)) (t!27990 List!19621)) )
))
(declare-fun arrayNoDuplicates!0 (array!58183 (_ BitVec 32) List!19621) Bool)

(assert (=> b!956163 (= lt!430069 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19618))))

(declare-fun b!956164 () Bool)

(declare-fun res!640351 () Bool)

(assert (=> b!956164 (=> (not res!640351) (not e!538788))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956164 (= res!640351 (and (= (size!28446 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28447 _keys!1441) (size!28446 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956165 () Bool)

(declare-fun e!538790 () Bool)

(assert (=> b!956165 (= e!538790 tp_is_empty!21031)))

(declare-fun b!956166 () Bool)

(declare-fun e!538789 () Bool)

(assert (=> b!956166 (= e!538789 (and e!538790 mapRes!33508))))

(declare-fun condMapEmpty!33508 () Bool)

(declare-fun mapDefault!33508 () ValueCell!10034)

