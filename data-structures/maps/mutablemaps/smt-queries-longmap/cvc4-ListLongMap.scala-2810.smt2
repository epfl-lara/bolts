; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40782 () Bool)

(assert start!40782)

(declare-fun b_free!10763 () Bool)

(declare-fun b_next!10763 () Bool)

(assert (=> start!40782 (= b_free!10763 (not b_next!10763))))

(declare-fun tp!38111 () Bool)

(declare-fun b_and!18831 () Bool)

(assert (=> start!40782 (= tp!38111 b_and!18831)))

(declare-fun b!451686 () Bool)

(declare-fun e!264552 () Bool)

(declare-fun e!264548 () Bool)

(assert (=> b!451686 (= e!264552 e!264548)))

(declare-fun res!269042 () Bool)

(assert (=> b!451686 (=> (not res!269042) (not e!264548))))

(declare-datatypes ((array!27971 0))(
  ( (array!27972 (arr!13427 (Array (_ BitVec 32) (_ BitVec 64))) (size!13779 (_ BitVec 32))) )
))
(declare-fun lt!205005 () array!27971)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27971 (_ BitVec 32)) Bool)

(assert (=> b!451686 (= res!269042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205005 mask!1025))))

(declare-fun _keys!709 () array!27971)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451686 (= lt!205005 (array!27972 (store (arr!13427 _keys!709) i!563 k!794) (size!13779 _keys!709)))))

(declare-fun b!451687 () Bool)

(declare-fun e!264549 () Bool)

(declare-fun e!264555 () Bool)

(declare-fun mapRes!19788 () Bool)

(assert (=> b!451687 (= e!264549 (and e!264555 mapRes!19788))))

(declare-fun condMapEmpty!19788 () Bool)

(declare-datatypes ((V!17239 0))(
  ( (V!17240 (val!6095 Int)) )
))
(declare-datatypes ((ValueCell!5707 0))(
  ( (ValueCellFull!5707 (v!8350 V!17239)) (EmptyCell!5707) )
))
(declare-datatypes ((array!27973 0))(
  ( (array!27974 (arr!13428 (Array (_ BitVec 32) ValueCell!5707)) (size!13780 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27973)

(declare-fun mapDefault!19788 () ValueCell!5707)

