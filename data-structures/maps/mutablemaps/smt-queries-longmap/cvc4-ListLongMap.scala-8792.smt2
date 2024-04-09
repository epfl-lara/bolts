; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107016 () Bool)

(assert start!107016)

(declare-fun mapIsEmpty!50584 () Bool)

(declare-fun mapRes!50584 () Bool)

(assert (=> mapIsEmpty!50584 mapRes!50584))

(declare-fun b!1268421 () Bool)

(declare-fun res!844313 () Bool)

(declare-fun e!722826 () Bool)

(assert (=> b!1268421 (=> (not res!844313) (not e!722826))))

(declare-datatypes ((array!82589 0))(
  ( (array!82590 (arr!39827 (Array (_ BitVec 32) (_ BitVec 64))) (size!40364 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82589)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82589 (_ BitVec 32)) Bool)

(assert (=> b!1268421 (= res!844313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!50584 () Bool)

(declare-fun tp!96764 () Bool)

(declare-fun e!722827 () Bool)

(assert (=> mapNonEmpty!50584 (= mapRes!50584 (and tp!96764 e!722827))))

(declare-datatypes ((V!48751 0))(
  ( (V!48752 (val!16409 Int)) )
))
(declare-datatypes ((ValueCell!15481 0))(
  ( (ValueCellFull!15481 (v!19044 V!48751)) (EmptyCell!15481) )
))
(declare-datatypes ((array!82591 0))(
  ( (array!82592 (arr!39828 (Array (_ BitVec 32) ValueCell!15481)) (size!40365 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82591)

(declare-fun mapValue!50584 () ValueCell!15481)

(declare-fun mapKey!50584 () (_ BitVec 32))

(declare-fun mapRest!50584 () (Array (_ BitVec 32) ValueCell!15481))

(assert (=> mapNonEmpty!50584 (= (arr!39828 _values!1134) (store mapRest!50584 mapKey!50584 mapValue!50584))))

(declare-fun b!1268422 () Bool)

(declare-fun tp_is_empty!32669 () Bool)

(assert (=> b!1268422 (= e!722827 tp_is_empty!32669)))

(declare-fun b!1268423 () Bool)

(declare-fun e!722825 () Bool)

(declare-fun e!722824 () Bool)

(assert (=> b!1268423 (= e!722825 (and e!722824 mapRes!50584))))

(declare-fun condMapEmpty!50584 () Bool)

(declare-fun mapDefault!50584 () ValueCell!15481)

