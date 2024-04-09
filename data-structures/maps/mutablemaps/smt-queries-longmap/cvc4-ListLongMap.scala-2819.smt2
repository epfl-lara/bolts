; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40890 () Bool)

(assert start!40890)

(declare-fun b_free!10817 () Bool)

(declare-fun b_next!10817 () Bool)

(assert (=> start!40890 (= b_free!10817 (not b_next!10817))))

(declare-fun tp!38278 () Bool)

(declare-fun b_and!18977 () Bool)

(assert (=> start!40890 (= tp!38278 b_and!18977)))

(declare-fun b!453812 () Bool)

(declare-fun res!270386 () Bool)

(declare-fun e!265600 () Bool)

(assert (=> b!453812 (=> (not res!270386) (not e!265600))))

(declare-datatypes ((array!28079 0))(
  ( (array!28080 (arr!13480 (Array (_ BitVec 32) (_ BitVec 64))) (size!13832 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28079)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28079 (_ BitVec 32)) Bool)

(assert (=> b!453812 (= res!270386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!453813 () Bool)

(declare-fun res!270385 () Bool)

(assert (=> b!453813 (=> (not res!270385) (not e!265600))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!453813 (= res!270385 (or (= (select (arr!13480 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13480 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!453814 () Bool)

(declare-fun e!265602 () Bool)

(assert (=> b!453814 (= e!265600 e!265602)))

(declare-fun res!270380 () Bool)

(assert (=> b!453814 (=> (not res!270380) (not e!265602))))

(declare-fun lt!206013 () array!28079)

(assert (=> b!453814 (= res!270380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206013 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!453814 (= lt!206013 (array!28080 (store (arr!13480 _keys!709) i!563 k!794) (size!13832 _keys!709)))))

(declare-fun mapIsEmpty!19873 () Bool)

(declare-fun mapRes!19873 () Bool)

(assert (=> mapIsEmpty!19873 mapRes!19873))

(declare-fun b!453815 () Bool)

(declare-fun e!265603 () Bool)

(declare-fun e!265599 () Bool)

(assert (=> b!453815 (= e!265603 (and e!265599 mapRes!19873))))

(declare-fun condMapEmpty!19873 () Bool)

(declare-datatypes ((V!17311 0))(
  ( (V!17312 (val!6122 Int)) )
))
(declare-datatypes ((ValueCell!5734 0))(
  ( (ValueCellFull!5734 (v!8384 V!17311)) (EmptyCell!5734) )
))
(declare-datatypes ((array!28081 0))(
  ( (array!28082 (arr!13481 (Array (_ BitVec 32) ValueCell!5734)) (size!13833 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28081)

(declare-fun mapDefault!19873 () ValueCell!5734)

